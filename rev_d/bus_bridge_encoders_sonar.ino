// Copyright (c) 2014 by Wayne C. Gramlich.  All rights reserved.

// The following tests are implemented by this code:
#define TEST_BUS_INPUT 1
#define TEST_BUS_OUTPUT 2
#define TEST_BUS_ECHO 3
#define TEST_BUS_COMMAND 4

// Set TEST to one of the possible tests:
#define TEST TEST_BUS_COMMAND

// Watch-out the code for SerialHardwared.cpp has been modified to
// notice this #define.  It causes the 8-ibt interrupt driver for
// UART1 to be disabled:
#define UART1_DISABLED

#include "Bus.h"
#include <Bus_Bridge_Encoders_Sonar_Local.h>

// The null object can be used for *debug_uart*:
NULL_UART null_uart;

// Debug *debug_uart* and *bus_uart* pointers:
#if defined(UDR1)
  UART *debug_uart = (UART *)&avr_uart0;
  UART *bus_uart = (UART *)&avr_uart1;
#else // defined(UDR1)
  UART *debug_uart = (UART *)&null_uart;
  UART *bus_uart = (UART *)&avr_uart0;
#endif // defined(UDR1)

// Define the pin names alphabetically:
static const UByte bus_standby_pin = A4;
static const UByte direction_1a_pin = 7;
static const UByte direction_enable_12_pin = 10;
static const UByte direction_2a_pin = 12;
static const UByte direction_3a_pin = 11;
static const UByte direction_enable_34_pin = 9;
static const UByte direction_enable_4a_pin = 8;
static const UByte encoder1_phase_a_pin = A0;
static const UByte encoder1_phase_b_pin = A1;
static const UByte encoder2_phase_a_pin = A2;
static const UByte encoder2_phase_b_pin = A3;
static const UByte encoders_enable_pin = 6;
static const UByte led_pin = 13;

// Encoder buffer:
#define BUFFER_POWER 8
#define BUFFER_SIZE (1 << BUFFER_POWER)
#define BUFFER_MASK (BUFFER_SIZE - 1)
static UByte encoder_buffer[BUFFER_SIZE];
static volatile UByte encoder_buffer_in = 0;
static volatile UByte encoder_buffer_out = 0;

// There are two encoders:
//
//    Encoder   Phase  Arduino Pin   PCInt
//    =======   =====  ===========   =======
//      1	  A        A0        PCInt8
//      1         B        A1        PCInt9
//      2         A        A2        PCInt10
//      2         B        A3        PCInt11

// This table is computed by bus_bridge_encoders_sonar.py
// Please read the comment in the Python code to understand
// the structure of the *state_transition_table* below:
static Byte state_transition_table[32] = {
    //            ccccc         sgg   // [xx]: SGG[gg] => sgg +/-
    (signed char)((0x00 << 3) | 0x0), // [00]: 000[00] => 000  0
    (signed char)((0x1f << 3) | 0x4), // [01]: 001[00] => 100 -1
    (signed char)((0x01 << 3) | 0x0), // [02]: 010[00] => 000 +1
    (signed char)((0x02 << 3) | 0x0), // [03]: 011[00] => 000 +2
    (signed char)((0x00 << 3) | 0x4), // [04]: 100[00] => 100  0
    (signed char)((0x1f << 3) | 0x4), // [05]: 101[00] => 100 -1
    (signed char)((0x01 << 3) | 0x0), // [06]: 110[00] => 000 +1
    (signed char)((0x1e << 3) | 0x4), // [07]: 111[00] => 100 -2
    (signed char)((0x01 << 3) | 0x1), // [08]: 1000[01] => 001 +1
    (signed char)((0x00 << 3) | 0x1), // [09]: 1001[01] => 001  0
    (signed char)((0x02 << 3) | 0x1), // [10]: 1010[01] => 001 +2
    (signed char)((0x1f << 3) | 0x5), // [11]: 1011[01] => 101 -1
    (signed char)((0x01 << 3) | 0x1), // [12]: 1100[01] => 001 +1
    (signed char)((0x00 << 3) | 0x5), // [13]: 1101[01] => 101  0
    (signed char)((0x1e << 3) | 0x5), // [14]: 1110[01] => 101 -2
    (signed char)((0x1f << 3) | 0x5), // [15]: 1111[01] => 101 -1
    (signed char)((0x1f << 3) | 0x6), // [16]: 10000[10] => 110 -1
    (signed char)((0x02 << 3) | 0x2), // [17]: 10001[10] => 010 +2
    (signed char)((0x00 << 3) | 0x2), // [18]: 10010[10] => 010  0
    (signed char)((0x01 << 3) | 0x2), // [19]: 10011[10] => 010 +1
    (signed char)((0x1f << 3) | 0x6), // [20]: 10100[10] => 110 -1
    (signed char)((0x1e << 3) | 0x6), // [21]: 10101[10] => 110 -2
    (signed char)((0x00 << 3) | 0x6), // [22]: 10110[10] => 110  0
    (signed char)((0x01 << 3) | 0x2), // [23]: 10111[10] => 010 +1
    (signed char)((0x02 << 3) | 0x3), // [24]: 11000[11] => 011 +2
    (signed char)((0x01 << 3) | 0x3), // [25]: 11001[11] => 011 +1
    (signed char)((0x1f << 3) | 0x7), // [26]: 11010[11] => 111 -1
    (signed char)((0x00 << 3) | 0x3), // [27]: 11011[11] => 011  0
    (signed char)((0x1e << 3) | 0x7), // [28]: 11100[11] => 111 -2
    (signed char)((0x01 << 3) | 0x3), // [29]: 11101[11] => 011 +1
    (signed char)((0x1f << 3) | 0x7), // [30]: 11110[11] => 111 -1
    (signed char)((0x00 << 3) | 0x7), // [31]: 11111[11] => 111  0
};

// *PCINT1_vect*() is the interrupt service routine for the
// pin change interrupts PCINT8/.../15.  The two encoders are
// attached to PCINT8/9/10/11, so these are the bits we want
// to capture.  This routine just stuffs the encoder bits
// into a buffer:

ISR(PCINT1_vect) {
  // Stuff the port C input bits into *buffer* and advance *buffer_in*:
  encoder_buffer[encoder_buffer_in] = PINC;
  encoder_buffer_in = (encoder_buffer_in + 1) & BUFFER_MASK;
  //Serial.print('.');
}

Bus bus(bus_uart, debug_uart);
Bus_Bridge_Encoders_Sonar bus_bridge_encoders_sonar(33);

UByte command_process(Bus *maker_bus, UByte command, Logical execute_mode) {
  switch (command) {
    // Bus_Bridge_Encoders_Sonar
    case 0: {
      // led_get: LED to control
      if (execute_mode) {
        Logical led = bus_bridge_encoders_sonar.led_get();
        maker_bus->logical_put(led);
      }
      break;
    }
    case 1: {
      Logical led = maker_bus->logical_get();
      if (execute_mode) {
        bus_bridge_encoders_sonar.led_set(led);
      }
      break;
    }
    case 2: {
      // encoder1_get: Encoder 1
      if (execute_mode) {
        Integer encoder1 = bus_bridge_encoders_sonar.encoder1_get();
        maker_bus->integer_put(encoder1);
      }
      break;
    }
    case 3: {
      // encoder1_set: Encoder 1
      Integer encoder1 = maker_bus->integer_get();
      if (execute_mode) {
        bus_bridge_encoders_sonar.encoder1_set(encoder1);
      }
      break;
    }
    case 4: {
      // encoder2_get: Encoder 2
      if (execute_mode) {
        Integer encoder2 = bus_bridge_encoders_sonar.encoder2_get();
        maker_bus->integer_put(encoder2);
      }
      break;
    }
    case 5: {
      // encoder2_set: Encoder 2
      Integer encoder2 = maker_bus->integer_get();
      if (execute_mode) {
        bus_bridge_encoders_sonar.encoder2_set(encoder2);
      }
      break;
    }
    case 8: {
      // motor1_get: Motor 1
      if (execute_mode) {
        Byte motor1 = bus_bridge_encoders_sonar.motor1_get();
        maker_bus->byte_put(motor1);
      }
      break;
    }
    case 9: {
      // motor1_set: Motor 1
      Byte motor1 = maker_bus->byte_get();
      if (execute_mode) {
        bus_bridge_encoders_sonar.motor1_set(motor1);
      }
      break;
    }
    case 10: {
      // motor2_get: Motor 2
      if (execute_mode) {
        Byte motor2 = bus_bridge_encoders_sonar.motor2_get();
        maker_bus->byte_put(motor2);
      }
      break;
    }
    case 11: {
      // motor2_set: Motor 2
      Byte motor2 = maker_bus->byte_get();
      if (execute_mode) {
        bus_bridge_encoders_sonar.motor2_set(motor2);
      }
      break;
    }
    case 12: {
      // motor1_reverse_get: Toggle motor direction.
      if (execute_mode) {
        Logical motor1_reverse = bus_bridge_encoders_sonar.motor1_reverse_get();
        maker_bus->logical_put(motor1_reverse);
      }
      break;
    }
    case 13: {
      // motor1_reverse_set: Toggle motor direction.
      Logical motor1_reverse = maker_bus->logical_get();
      if (execute_mode) {
        bus_bridge_encoders_sonar.motor1_reverse_set(motor1_reverse);
      }
      break;
    }
    case 14: {
      // motor2_reverse_get: Toggle motor direction.
      if (execute_mode) {
        Logical motor2_reverse = bus_bridge_encoders_sonar.motor2_reverse_get();
        maker_bus->logical_put(motor2_reverse);
      }
      break;
    }
    case 15: {
      // motor2_reverse_set: Toggle motor direction.
      Logical motor2_reverse = maker_bus->logical_get();
      if (execute_mode) {
        bus_bridge_encoders_sonar.motor2_reverse_set(motor2_reverse);
      }
      break;
    }
    case 16: {
      // encoder1_reverse_get: Toggle encoder direction.
      if (execute_mode) {
        Logical encoder1_reverse = bus_bridge_encoders_sonar.encoder1_reverse_get();
        maker_bus->logical_put(encoder1_reverse);
      }
      break;
    }
    case 17: {
      // encoder1_reverse_set: Toggle encoder direction.
      Logical encoder1_reverse = maker_bus->logical_get();
      if (execute_mode) {
        bus_bridge_encoders_sonar.encoder1_reverse_set(encoder1_reverse);
      }
      break;
    }
    case 18: {
      // encoder2_reverse_get: Toggle encoder direction.
      if (execute_mode) {
        Logical encoder2_reverse = bus_bridge_encoders_sonar.encoder2_reverse_get();
        maker_bus->logical_put(encoder2_reverse);
      }
      break;
    }
    case 19: {
      // encoder2_reverse_set: Toggle encoder direction.
      Logical encoder2_reverse = maker_bus->logical_get();
      if (execute_mode) {
        bus_bridge_encoders_sonar.encoder2_reverse_set(encoder2_reverse);
      }
      break;
    }
    case 20: {
      // motors_encoders_swap_get: Toggle encoder direction.
      if (execute_mode) {
        Logical motors_encoders_swap = bus_bridge_encoders_sonar.motors_encoders_swap_get();
        maker_bus->logical_put(motors_encoders_swap);
      }
      break;
    }
    case 21: {
      // motors_encoders_swap_set: Toggle encoder direction.
      Logical motors_encoders_swap = maker_bus->logical_get();
      if (execute_mode) {
        bus_bridge_encoders_sonar.motors_encoders_swap_set(motors_encoders_swap);
      }
      break;
    }
    case 6: {
      // encoders_reset: Reset both encoders to zero.
      if (execute_mode) {
        bus_bridge_encoders_sonar.encoders_reset();
      }
      break;
    }
    case 7: {
      // encoders_latch: Cause both encoder values to be latched.
      if (execute_mode) {
        bus_bridge_encoders_sonar.encoders_latch();
      }
      break;
    }

  }
  return 0;
}

void loop() {
  switch (TEST) {
    case TEST_BUS_COMMAND: {
      // Encoder positions and state:
      static UByte encoder1_state = 0;
      static UByte encoder2_state = 0;

      // Deal with any *bus* related activities:
      bus.slave_mode(0x21, command_process);

      // Deal with encoder issues:
      if (encoder_buffer_in != encoder_buffer_out) {
	// Grab all 4 encoder bits from *encoder_buffer*:
	UByte encoder_bits = encoder_buffer[encoder_buffer_out];
	encoder_buffer_out = (encoder_buffer_out + 1) & BUFFER_MASK;

	// Just print out *encoder_bits*:
	//Serial.print(encoder_bits & 0x3);
	//Serial.print(":");
	//Serial.print((encoder_bits >> 2) & 0x3);
	//Serial.print("\n");

	// Process encoder1:
	// *encoder1_state* has 3 bits of state - '0000 0sss'.
	// We take encoder1 bits encoder from *encoder_bits* ('0000 00ee'),
	// shift them left by 3, and OR them with the *encoder1_state*:
	//
	//     encoder1_state:  0000 0sss
	//     encoder_bits<<3: 000e e000
	//  OR ==========================
	//     index            000e esss
	//
	UByte index = ((encoder_bits & 0x3) << 3) | encoder1_state;

	// Note that *state_transition* is signed.
	Byte state_transition = state_transition_table[index];
	bus_bridge_encoders_sonar._encoder1 += state_transition >> 3;
	encoder1_state = (unsigned char)(state_transition & 0x7);

	// Process encoder2:
	// Now we do the same for encoder2 whose bits are 2 bits over
	// ('0000 eexx'):
	index = ((encoder_bits & 0xc) << 1) | encoder2_state;
	state_transition = state_transition_table[index];
	bus_bridge_encoders_sonar._encoder2 += state_transition >> 3;
	encoder2_state = (unsigned char)(state_transition & 0x7);
      }
      break;
    }
    case TEST_BUS_ECHO: {
      // Wait for a *frame* to show up on *bus*:
      UShort frame = bus.frame_get();

      // Set the *LED* to the least significant bit of *frame*:
      if ((frame & 1) == 0) {
        digitalWrite(led_pin, LOW);
      } else {
        digitalWrite(led_pin, HIGH);
      }

      // Print *frame* out to *debug_uart*:
      debug_uart->frame_put(frame & 0x7f);

      // Send out a CRLF when we get a '_':
      if (frame == (UShort)'_') {
        debug_uart->string_print((Character *)"\r\n");
      }

      // Now send *frame* back to the *bus*:
      bus.frame_put(frame);

      // Get the *echo_frame* and check for a mismatch;
      UShort echo_frame = bus.frame_get();
      if (frame != echo_frame) {
        debug_uart->string_print((Character *)"!");
      }

      break;
    }
    case TEST_BUS_OUTPUT: {
      // This test will just output characters to the debugging port
      // with no interraction with the bus:

      // Start with with *character* being static:
      static Character character = '@';

      // Just in case, make sure *character* is between '@' and '_':
      if (character < '@' || character > '_') {
	character = '@';
      }

      // Output *character* to the *debug_uart*:
      //debug_uart->frame_put((UShort)character);
      UDR0 = character;

      // Output any needed CRLF, and increment *character*:
      if (character == '_') {
	debug_uart->string_print((Character *)"\r\n");
	character = '@';
      } else {
	character += 1;
      }

      if ((character & 1) == 0) {
	digitalWrite(led_pin, LOW);
      } else {
	digitalWrite(led_pin, HIGH);
      }

      // Slow things down a little:
      delay(100);

      break;
    }
    case TEST_BUS_INPUT: {
      // This test will input *frame*'s from the *bus* and echo them
      // to *debug_uart*:

      // Get a *frame* from the bus:
      UShort frame = bus.frame_get();

      // Print it out for debugging:
      debug_uart->frame_put(frame & 0x7f);

      // Tack on a CRLF when we get an '_':    
      if (frame == (UShort)'_') {
	debug_uart->string_print((Character *)"\r\n");
      }

      // Light the *LED* using the least significant bit of *frame*:
      if ((frame & 1) == 0) {
	digitalWrite(led_pin, LOW);
      } else {
	digitalWrite(led_pin, HIGH);
      }
      break;
    }
  }
}

void setup() {
  // The standard frequency for an AVR Arduino is 16MHz:
  static const UInteger frequency = (UInteger)16000000L;

  // Initalize the *debug_uart*:
  debug_uart->begin(frequency, 115200L, (Character *)"8N1");

  // Turn *LED* on:
  pinMode(led_pin, OUTPUT);
  digitalWrite(led_pin, HIGH);

  // Get *bus_uart* talking to the bus:
  bus_uart->begin(frequency, 500000L, (Character *)"9N1");

  // Force the standby pin on the CAN transeciever to low to force it
  // into active mode:
  pinMode(bus_standby_pin, OUTPUT);
  digitalWrite(bus_standby_pin, LOW);

  // Set up the H-Bridge pins:
  pinMode(direction_1a_pin, OUTPUT);
  pinMode(direction_enable_12_pin, OUTPUT);
  pinMode(direction_2a_pin, OUTPUT);
  pinMode(direction_3a_pin, OUTPUT);
  pinMode(direction_enable_34_pin, OUTPUT);
  pinMode(direction_enable_4a_pin, OUTPUT);  

  // Set up the encoder pins:
  pinMode(encoder1_phase_a_pin, INPUT);
  pinMode(encoder1_phase_b_pin, INPUT);
  pinMode(encoder2_phase_a_pin, INPUT);
  pinMode(encoder2_phase_b_pin, INPUT);
  pinMode(encoders_enable_pin, OUTPUT);

  // Set up the LED output pins:
  pinMode(led_pin, OUTPUT);
  
  // Turn on encoder LED's:
  digitalWrite(encoders_enable_pin, HIGH);

  // Disable the motors:
  digitalWrite(direction_1a_pin, LOW);
  digitalWrite(direction_enable_12_pin, LOW);
  digitalWrite(direction_2a_pin, LOW);
  digitalWrite(direction_3a_pin, LOW);
  digitalWrite(direction_enable_34_pin, LOW);
  digitalWrite(direction_enable_4a_pin, LOW);
  
  // For now, turn on the both motors:
  //digitalWrite(direction_1a_pin, HIGH);
  //digitalWrite(direction_3a_pin, HIGH);
  //analogWrite(direction_enable_12_pin, 255);
  //analogWrite(direction_enable_34_pin, 255);

  // Set up Interrupt on Pin Change interrupt vector.  The encoder
  // pins are attached to PCINT8/9/10/11, so we only need to set
  // PCMSK1 to '0000 1111':
  PCMSK1 = _BV(3) | _BV(2) | _BV(1) | _BV(0);

  // Now enable interrup on changes for PCINT8/.../15, by setting
  // PCICR to 1.  Thus, PCICR is set to 'xxxx x010' or '0000 0010':
  PCICR = _BV(1);

  // Enable global interrupts by setting the I bit (7th bit) in the
  // status register:
  //SREG |= _BV(7);


  // Enable/disable interrupts based on *TEST*:
  switch (TEST) {
    case TEST_BUS_OUTPUT: 
      debug_uart = &avr_uart0;
      debug_uart->begin(frequency, 115200L, (Text)"8N1");
      debug_uart->string_print((Character *)"\r\nbbes_output:\r\n");
      debug_uart->interrupt_set((Logical)0);
      bus_uart->interrupt_set((Logical)0);
      break;
    case TEST_BUS_INPUT:
      debug_uart->string_print((Character *)"\r\nbbes_input:\r\n");
      debug_uart->interrupt_set((Logical)1);
      bus_uart->interrupt_set((Logical)1);
      break;
    case TEST_BUS_ECHO:
      debug_uart->string_print((Character *)"\r\nbbes_echo:\r\n");
      debug_uart->interrupt_set((Logical)0);
      bus_uart->interrupt_set((Logical)0);
      break;
    case TEST_BUS_COMMAND:
      debug_uart->string_print((Character *)"\r\nbbes_command:\r\n");
      debug_uart->interrupt_set((Logical)1);
      bus_uart->interrupt_set((Logical)1);
      break;
  }
}

