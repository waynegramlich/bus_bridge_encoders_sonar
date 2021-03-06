EESchema Schematic File Version 2
LIBS:bus_bridge_encoders_sonar
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:bus_bridge_encoders_sonar-cache
EELAYER 24 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Bridge/Encoders/Sonars Mini-Shield"
Date "10 Jul 2014"
Rev "B"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 3MM_HOLE H1
U 1 1 53AA33AA
P 5850 6600
F 0 "H1" H 5800 6750 50  0000 C CNN
F 1 "3MM_HOLE" H 5850 6450 50  0000 C CNN
F 2 "" H 5850 6600 60  0000 C CNN
F 3 "" H 5850 6600 60  0000 C CNN
	1    5850 6600
	1    0    0    -1  
$EndComp
Text Label 2400 700  0    50   ~ 0
BPWR
Text Label 2400 900  0    50   ~ 0
BGND
Text Label 5375 2500 0    50   ~ 0
D13
Text Label 5375 3100 0    50   ~ 0
D12
Text Label 5350 2800 0    50   ~ 0
D11
Text Label 5350 3800 0    50   ~ 0
D10
Text Label 5100 4750 0    50   ~ 0
D9
Text Label 5400 3400 0    50   ~ 0
D8
Text Label 5400 4250 0    50   ~ 0
D7
Text Label 2625 3700 2    50   ~ 0
D6
Text Label 2625 3600 2    50   ~ 0
D5
Text Label 2625 3100 2    50   ~ 0
D4
Text Label 3850 4750 0    50   ~ 0
D3
Text Label 2625 2900 2    50   ~ 0
D2
$Comp
L OSHW_LOGO G1
U 1 1 53AA4798
P 10000 3675
F 0 "G1" H 10000 3875 60  0000 C CNN
F 1 "OSHW_LOGO" H 10000 3500 60  0000 C CNN
F 2 "" H 10000 3675 60  0000 C CNN
F 3 "" H 10000 3675 60  0000 C CNN
	1    10000 3675
	1    0    0    -1  
$EndComp
$Comp
L OPTO_ISOLATOR U2
U 2 1 53AF4EDB
P 7000 2200
F 0 "U2" H 6995 2510 60  0000 C CNN
F 1 "LTV-826" H 7000 1875 60  0000 C CNN
F 2 "" H 7000 2200 60  0000 C CNN
F 3 "" H 7000 2200 60  0000 C CNN
	2    7000 2200
	1    0    0    -1  
$EndComp
$Comp
L VOLTAGE_REGULATOR U1
U 1 1 53AF4DC8
P 4450 1450
F 0 "U1" H 4250 1600 50  0000 C CNN
F 1 "LM2940" H 4475 1300 50  0000 L CNN
F 2 "" H 4450 1500 60  0000 C CNN
F 3 "" H 4450 1500 60  0000 C CNN
	1    4450 1450
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C1
U 1 1 53B058C5
P 3900 1700
F 0 "C1" H 3920 1790 50  0000 L CNN
F 1 "22uF" H 3920 1610 50  0000 L CNN
F 2 "" H 3938 1550 30  0000 C CNN
F 3 "" H 3900 1700 60  0000 C CNN
	1    3900 1700
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C2
U 1 1 53B05957
P 5000 1700
F 0 "C2" H 5020 1790 50  0000 L CNN
F 1 ".1uF" H 5020 1610 50  0000 L CNN
F 2 "" H 5038 1550 30  0000 C CNN
F 3 "" H 5000 1700 60  0000 C CNN
	1    5000 1700
	1    0    0    -1  
$EndComp
$Comp
L R_HORIZ R1
U 1 1 53B059A7
P 4750 2000
F 0 "R1" H 4750 2100 50  0000 C CNN
F 1 ".47" H 4750 1900 50  0000 C CNN
F 2 "" H 4775 2000 60  0000 C CNN
F 3 "" H 4775 2000 60  0000 C CNN
	1    4750 2000
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C3
U 1 1 53B05AB0
P 5400 1700
F 0 "C3" H 5420 1790 50  0000 L CNN
F 1 "22uF" H 5420 1610 50  0000 L CNN
F 2 "" H 5438 1550 30  0000 C CNN
F 3 "" H 5400 1700 60  0000 C CNN
	1    5400 1700
	1    0    0    -1  
$EndComp
$Comp
L POWER_SELECT J1
U 1 1 53B05B56
P 4550 1000
F 0 "J1" H 4500 1200 50  0000 C CNN
F 1 "POWER_SELECT" H 4550 800 50  0000 C CNN
F 2 "" H 4550 1000 60  0000 C CNN
F 3 "" H 4550 1000 60  0000 C CNN
	1    4550 1000
	1    0    0    -1  
$EndComp
$Comp
L OPTO_ISOLATOR U3
U 2 1 53B067F4
P 7000 3800
F 0 "U3" H 6995 4110 60  0000 C CNN
F 1 "LTV-826" H 7000 3475 60  0000 C CNN
F 2 "" H 7000 3800 60  0000 C CNN
F 3 "" H 7000 3800 60  0000 C CNN
	2    7000 3800
	1    0    0    -1  
$EndComp
$Comp
L OPTO_ISOLATOR U4
U 2 1 53B06871
P 7000 5400
F 0 "U4" H 6995 5710 60  0000 C CNN
F 1 "LTV-826" H 7000 5075 60  0000 C CNN
F 2 "" H 7000 5400 60  0000 C CNN
F 3 "" H 7000 5400 60  0000 C CNN
	2    7000 5400
	1    0    0    -1  
$EndComp
$Comp
L OPTO_ISOLATOR U2
U 1 1 53B068B0
P 7000 1400
F 0 "U2" H 6995 1710 60  0000 C CNN
F 1 "LTV-826" H 7000 1075 60  0000 C CNN
F 2 "" H 7000 1400 60  0000 C CNN
F 3 "" H 7000 1400 60  0000 C CNN
	1    7000 1400
	1    0    0    -1  
$EndComp
$Comp
L OPTO_ISOLATOR U3
U 1 1 53B06AF8
P 7000 3000
F 0 "U3" H 6995 3310 60  0000 C CNN
F 1 "LTV-826" H 7000 2675 60  0000 C CNN
F 2 "" H 7000 3000 60  0000 C CNN
F 3 "" H 7000 3000 60  0000 C CNN
	1    7000 3000
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R11
U 1 1 53B07714
P 8300 6300
F 0 "R11" H 8370 6350 50  0000 L CNN
F 1 "10K" H 8370 6250 50  0000 L CNN
F 2 "" H 8300 6350 60  0000 C CNN
F 3 "" H 8300 6350 60  0000 C CNN
	1    8300 6300
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R12
U 1 1 53B077B8
P 8600 6300
F 0 "R12" H 8670 6350 50  0000 L CNN
F 1 "10K" H 8670 6250 50  0000 L CNN
F 2 "" H 8600 6350 60  0000 C CNN
F 3 "" H 8600 6350 60  0000 C CNN
	1    8600 6300
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R13
U 1 1 53B077EB
P 8900 6300
F 0 "R13" H 8970 6350 50  0000 L CNN
F 1 "10K" H 8970 6250 50  0000 L CNN
F 2 "" H 8900 6350 60  0000 C CNN
F 3 "" H 8900 6350 60  0000 C CNN
	1    8900 6300
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R8
U 1 1 53B07E1A
P 7400 6300
F 0 "R8" H 7470 6350 50  0000 L CNN
F 1 "10K" H 7470 6250 50  0000 L CNN
F 2 "" H 7400 6350 60  0000 C CNN
F 3 "" H 7400 6350 60  0000 C CNN
	1    7400 6300
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R9
U 1 1 53B07E85
P 7700 6300
F 0 "R9" H 7770 6350 50  0000 L CNN
F 1 "10K" H 7770 6250 50  0000 L CNN
F 2 "" H 7700 6350 60  0000 C CNN
F 3 "" H 7700 6350 60  0000 C CNN
	1    7700 6300
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R10
U 1 1 53B07EB5
P 8000 6300
F 0 "R10" H 8070 6350 50  0000 L CNN
F 1 "10K" H 8070 6250 50  0000 L CNN
F 2 "" H 8000 6350 60  0000 C CNN
F 3 "" H 8000 6350 60  0000 C CNN
	1    8000 6300
	1    0    0    -1  
$EndComp
$Comp
L 754410 U5
U 1 1 53B0B545
P 9100 2200
F 0 "U5" H 9100 3100 50  0000 C CNN
F 1 "754410" H 9100 1200 50  0000 C CNN
F 2 "" H 9075 775 60  0000 C CNN
F 3 "" H 9075 775 60  0000 C CNN
	1    9100 2200
	1    0    0    -1  
$EndComp
$Comp
L R_HORIZ R2
U 1 1 53B104EB
P 5700 2500
F 0 "R2" H 5700 2600 50  0000 C CNN
F 1 "470" H 5700 2400 50  0000 C CNN
F 2 "" H 5725 2500 60  0000 C CNN
F 3 "" H 5725 2500 60  0000 C CNN
	1    5700 2500
	1    0    0    -1  
$EndComp
$Comp
L R_HORIZ R3
U 1 1 53B1057E
P 5700 2800
F 0 "R3" H 5700 2900 50  0000 C CNN
F 1 "470" H 5700 2700 50  0000 C CNN
F 2 "" H 5725 2800 60  0000 C CNN
F 3 "" H 5725 2800 60  0000 C CNN
	1    5700 2800
	1    0    0    -1  
$EndComp
$Comp
L R_HORIZ R4
U 1 1 53B105C7
P 5700 3100
F 0 "R4" H 5700 3200 50  0000 C CNN
F 1 "470" H 5700 3000 50  0000 C CNN
F 2 "" H 5725 3100 60  0000 C CNN
F 3 "" H 5725 3100 60  0000 C CNN
	1    5700 3100
	1    0    0    -1  
$EndComp
$Comp
L OPTO_ISOLATOR U4
U 1 1 53B06833
P 7000 4600
F 0 "U4" H 6995 4910 60  0000 C CNN
F 1 "LTV-826" H 7000 4275 60  0000 C CNN
F 2 "" H 7000 4600 60  0000 C CNN
F 3 "" H 7000 4600 60  0000 C CNN
	1    7000 4600
	1    0    0    -1  
$EndComp
$Comp
L R_HORIZ R5
U 1 1 53B1074B
P 5700 3400
F 0 "R5" H 5700 3500 50  0000 C CNN
F 1 "470" H 5700 3300 50  0000 C CNN
F 2 "" H 5725 3400 60  0000 C CNN
F 3 "" H 5725 3400 60  0000 C CNN
	1    5700 3400
	1    0    0    -1  
$EndComp
$Comp
L R_HORIZ R6
U 1 1 53B107A9
P 5700 3800
F 0 "R6" H 5700 3900 50  0000 C CNN
F 1 "470" H 5700 3700 50  0000 C CNN
F 2 "" H 5725 3800 60  0000 C CNN
F 3 "" H 5725 3800 60  0000 C CNN
	1    5700 3800
	1    0    0    -1  
$EndComp
$Comp
L R_HORIZ R7
U 1 1 53B10807
P 5700 4250
F 0 "R7" H 5700 4350 50  0000 C CNN
F 1 "470" H 5700 4150 50  0000 C CNN
F 2 "" H 5725 4250 60  0000 C CNN
F 3 "" H 5725 4250 60  0000 C CNN
	1    5700 4250
	1    0    0    -1  
$EndComp
$Comp
L MOTOR_CONNECTOR N5
U 1 1 53B16BD0
P 10300 1950
F 0 "N5" H 10300 2100 50  0000 C CNN
F 1 "MOTOR_CONNECTOR" H 10100 1800 50  0000 C CNN
F 2 "" H 10300 1950 60  0000 C CNN
F 3 "" H 10300 1950 60  0000 C CNN
	1    10300 1950
	1    0    0    -1  
$EndComp
$Comp
L MOTOR_CONNECTOR N6
U 1 1 53B16F6F
P 10300 2450
F 0 "N6" H 10300 2600 50  0000 C CNN
F 1 "MOTOR_CONNECTOR" H 10100 2300 50  0000 C CNN
F 2 "" H 10300 2450 60  0000 C CNN
F 3 "" H 10300 2450 60  0000 C CNN
	1    10300 2450
	1    0    0    -1  
$EndComp
Text Label 8750 600  0    50   ~ 0
MOTOR_POWER
Text Label 5150 1400 0    50   ~ 0
M5V
Text Notes 9600 6650 0    50   ~ 0
Electrically Isolated
$Comp
L ENCODER_CONNECTOR N3
U 1 1 53B1B0A0
P 1150 3850
F 0 "N3" H 1150 4100 50  0000 C CNN
F 1 "ENCODER_CONNECTOR" H 1125 3600 50  0000 C CNN
F 2 "" H 1150 3850 50  0000 C CNN
F 3 "" H 1150 3850 50  0000 C CNN
	1    1150 3850
	-1   0    0    -1  
$EndComp
Text Notes 3650 2275 0    50   ~ 0
Electrically Isolated
$Comp
L ENCODER_CONNECTOR N4
U 1 1 53B21032
P 1150 3150
F 0 "N4" H 1250 3400 50  0000 C CNN
F 1 "ENCODER_CONNECTOR" H 1125 2900 50  0000 C CNN
F 2 "" H 1150 3150 50  0000 C CNN
F 3 "" H 1150 3150 50  0000 C CNN
	1    1150 3150
	-1   0    0    -1  
$EndComp
$Comp
L C_VERT C4
U 1 1 53B246EA
P 8200 1200
F 0 "C4" H 8220 1290 50  0000 L CNN
F 1 ".1uF" H 8220 1110 50  0000 L CNN
F 2 "" H 8238 1050 30  0000 C CNN
F 3 "" H 8200 1200 60  0000 C CNN
	1    8200 1200
	1    0    0    -1  
$EndComp
Text Label 9750 1900 0    50   ~ 0
M1+
Text Label 9750 2000 0    50   ~ 0
M1-
Text Label 9750 2400 0    50   ~ 0
M2+
Text Label 9750 2500 0    50   ~ 0
M2-
$Comp
L HC_SR04_CONNECTOR N7
U 1 1 53B4C06A
P 5550 4800
F 0 "N7" H 5550 5050 50  0000 C CNN
F 1 "HC_SR04_CONNECTOR" H 5550 4550 50  0000 C CNN
F 2 "" H 5550 4800 50  0000 C CNN
F 3 "" H 5550 4800 50  0000 C CNN
	1    5550 4800
	1    0    0    -1  
$EndComp
$Comp
L HC_SR04_CONNECTOR N8
U 1 1 53B4C21C
P 4325 4800
F 0 "N8" H 4325 5050 50  0000 C CNN
F 1 "HC_SR04_CONNECTOR" H 4250 4550 50  0000 C CNN
F 2 "" H 4325 4800 50  0000 C CNN
F 3 "" H 4325 4800 50  0000 C CNN
	1    4325 4800
	1    0    0    -1  
$EndComp
Text Notes 3825 1650 0    50   ~ 0
+
Text Notes 5300 1650 0    50   ~ 0
+
$Comp
L ATMEGA328_DIP28 U9
U 1 1 53E952D0
P 3600 3250
F 0 "U9" H 3575 4050 50  0000 C CNN
F 1 "ATMEGA328_DIP28" H 3600 2425 50  0000 C CNN
F 2 "" H 3600 3250 60  0000 C CNN
F 3 "" H 3600 3250 60  0000 C CNN
	1    3600 3250
	1    0    0    -1  
$EndComp
Text Label 3850 4850 0    50   ~ 0
A0
Text Label 5100 4850 0    50   ~ 0
A1
$Comp
L BUS_SLAVE_HEADER N1
U 1 1 53E9683A
P 900 1150
F 0 "N1" H 725 600 50  0000 C CNN
F 1 "BUS_SLAVE_HEADER" H 900 1700 50  0000 C CNN
F 2 "" H 900 1150 60  0000 C CNN
F 3 "" H 900 1150 60  0000 C CNN
	1    900  1150
	1    0    0    1   
$EndComp
$Comp
L MCP2562 U8
U 1 1 53E968BB
P 2500 2000
F 0 "U8" H 2250 2300 50  0000 C CNN
F 1 "MCP2562" H 2475 1800 50  0000 C CNN
F 2 "" H 2550 2000 60  0000 C CNN
F 3 "" H 2550 2000 60  0000 C CNN
	1    2500 2000
	1    0    0    -1  
$EndComp
$Comp
L SCHOTTKY_DIODE_VERT D1
U 1 1 53E96A4D
P 4500 6600
F 0 "D1" H 4600 6450 50  0000 C CNN
F 1 "SD101C-TR" H 4775 6725 50  0000 C CNN
F 2 "" H 4500 6600 60  0000 C CNN
F 3 "" H 4500 6600 60  0000 C CNN
	1    4500 6600
	-1   0    0    1   
$EndComp
$Comp
L TERMINATE_JUMPER J2
U 1 1 53E96A70
P 3000 1300
F 0 "J2" H 3050 1500 50  0000 C CNN
F 1 "TERMINATE_JUMPER" H 3000 1100 50  0000 C CNN
F 2 "" H 3000 1300 60  0000 C CNN
F 3 "" H 3000 1300 60  0000 C CNN
	1    3000 1300
	-1   0    0    -1  
$EndComp
$Comp
L FTDI_HEADER N2
U 1 1 53E96ADF
P 1150 7500
F 0 "N2" H 1050 8100 50  0000 C CNN
F 1 "FTDI_HEADER" H 1150 7275 50  0000 C CNN
F 2 "" H 1150 7500 60  0000 C CNN
F 3 "" H 1150 7500 60  0000 C CNN
	1    1150 7500
	1    0    0    -1  
$EndComp
$Comp
L R_HORIZ R19
U 1 1 53E99224
P 2400 1300
F 0 "R19" H 2400 1400 50  0000 C CNN
F 1 ".47" H 2400 1200 50  0000 C CNN
F 2 "" H 2425 1300 60  0000 C CNN
F 3 "" H 2425 1300 60  0000 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
NoConn ~ 2700 1400
$Comp
L 74X08 U7
U 1 2 53EA309B
P 1350 2600
F 0 "U7" H 1350 2850 50  0000 C CNN
F 1 "74HCT08" H 1225 2350 50  0000 C CNN
F 2 "" H 1350 2600 60  0000 C CNN
F 3 "" H 1350 2600 60  0000 C CNN
	1    1350 2600
	1    0    0    -1  
$EndComp
$Comp
L VOLTAGE_REGULATOR U6
U 1 1 53EA3E06
P 1550 5500
F 0 "U6" H 1350 5650 50  0000 C CNN
F 1 "LM2940" H 1575 5350 50  0000 L CNN
F 2 "" H 1550 5550 60  0000 C CNN
F 3 "" H 1550 5550 60  0000 C CNN
	1    1550 5500
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C6
U 1 1 53EA3E9D
P 1000 5750
F 0 "C6" H 1020 5840 50  0000 L CNN
F 1 "22uF" H 1020 5660 50  0000 L CNN
F 2 "" H 1038 5600 30  0000 C CNN
F 3 "" H 1000 5750 60  0000 C CNN
	1    1000 5750
	1    0    0    -1  
$EndComp
$Comp
L R_HORIZ R14
U 1 1 53EA42CF
P 1800 6050
F 0 "R14" H 1800 6150 50  0000 C CNN
F 1 ".47" H 1800 5950 50  0000 C CNN
F 2 "" H 1825 6050 60  0000 C CNN
F 3 "" H 1825 6050 60  0000 C CNN
	1    1800 6050
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C8
U 1 1 53EA479D
P 2100 5750
F 0 "C8" H 2120 5840 50  0000 L CNN
F 1 ".1uF" H 2120 5660 50  0000 L CNN
F 2 "" H 2138 5600 30  0000 C CNN
F 3 "" H 2100 5750 60  0000 C CNN
	1    2100 5750
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C9
U 1 1 53EA4CB4
P 2400 5750
F 0 "C9" H 2420 5840 50  0000 L CNN
F 1 "22uF" H 2420 5660 50  0000 L CNN
F 2 "" H 2438 5600 30  0000 C CNN
F 3 "" H 2400 5750 60  0000 C CNN
	1    2400 5750
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 53EA6D8D
P 1400 4450
F 0 "X1" H 1400 4600 50  0000 C CNN
F 1 "16MHz" H 1400 4300 50  0000 C CNN
F 2 "" H 1400 4450 60  0000 C CNN
F 3 "" H 1400 4450 60  0000 C CNN
	1    1400 4450
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C5
U 1 1 53EA7619
P 1000 4750
F 0 "C5" H 1020 4840 50  0000 L CNN
F 1 "18pF" H 1020 4660 50  0000 L CNN
F 2 "" H 1038 4600 30  0000 C CNN
F 3 "" H 1000 4750 60  0000 C CNN
	1    1000 4750
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C7
U 1 1 53EA7713
P 1800 4750
F 0 "C7" H 1820 4840 50  0000 L CNN
F 1 "18pF" H 1820 4660 50  0000 L CNN
F 2 "" H 1838 4600 30  0000 C CNN
F 3 "" H 1800 4750 60  0000 C CNN
	1    1800 4750
	1    0    0    -1  
$EndComp
NoConn ~ 4500 3300
NoConn ~ 4500 2900
NoConn ~ 4500 2800
NoConn ~ 4500 2700
NoConn ~ 4500 2600
$Comp
L R_VERT R15
U 1 1 53EAC63C
P 1800 6750
F 0 "R15" H 1870 6800 50  0000 L CNN
F 1 "22K" H 1870 6700 50  0000 L CNN
F 2 "" H 1800 6800 60  0000 C CNN
F 3 "" H 1800 6800 60  0000 C CNN
	1    1800 6750
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R16
U 1 1 53EAC7FD
P 1800 7550
F 0 "R16" H 1870 7600 50  0000 L CNN
F 1 "33K" H 1870 7500 50  0000 L CNN
F 2 "" H 1800 7600 60  0000 C CNN
F 3 "" H 1800 7600 60  0000 C CNN
	1    1800 7550
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R17
U 1 1 53EACA5C
P 2100 6750
F 0 "R17" H 2170 6800 50  0000 L CNN
F 1 "22K" H 2170 6700 50  0000 L CNN
F 2 "" H 2100 6800 60  0000 C CNN
F 3 "" H 2100 6800 60  0000 C CNN
	1    2100 6750
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R20
U 1 1 53EACAD9
P 2400 6750
F 0 "R20" H 2470 6800 50  0000 L CNN
F 1 "22K" H 2470 6700 50  0000 L CNN
F 2 "" H 2400 6800 60  0000 C CNN
F 3 "" H 2400 6800 60  0000 C CNN
	1    2400 6750
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R18
U 1 1 53EACB37
P 2100 7550
F 0 "R18" H 2170 7600 50  0000 L CNN
F 1 "33K" H 2170 7500 50  0000 L CNN
F 2 "" H 2100 7600 60  0000 C CNN
F 3 "" H 2100 7600 60  0000 C CNN
	1    2100 7550
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R21
U 1 1 53EACB9A
P 2400 7550
F 0 "R21" H 2470 7600 50  0000 L CNN
F 1 "33K" H 2470 7500 50  0000 L CNN
F 2 "" H 2400 7600 60  0000 C CNN
F 3 "" H 2400 7600 60  0000 C CNN
	1    2400 7550
	1    0    0    -1  
$EndComp
NoConn ~ 1500 7350
NoConn ~ 1500 7450
$Comp
L 74X08 U7
U 2 1 53EAE540
P 3400 6950
F 0 "U7" H 3400 7200 50  0000 C CNN
F 1 "74HCT08" H 3275 6700 50  0000 C CNN
F 2 "" H 3400 6950 60  0000 C CNN
F 3 "" H 3400 6950 60  0000 C CNN
	2    3400 6950
	1    0    0    -1  
$EndComp
$Comp
L C_HORIZ C10
U 1 1 53E996AB
P 4200 6950
F 0 "C10" H 4260 7010 50  0000 L CNN
F 1 ".1uF" H 4260 6880 50  0000 L CNN
F 2 "" H 4238 6800 30  0000 C CNN
F 3 "" H 4200 6950 60  0000 C CNN
	1    4200 6950
	1    0    0    -1  
$EndComp
$Comp
L R_VERT R22
U 1 1 53E99988
P 4800 6650
F 0 "R22" H 4870 6700 50  0000 L CNN
F 1 "10K" H 4870 6600 50  0000 L CNN
F 2 "" H 4800 6700 60  0000 C CNN
F 3 "" H 4800 6700 60  0000 C CNN
	1    4800 6650
	1    0    0    -1  
$EndComp
$Comp
L 2_LEAD_PUSH_BUTTON SW1
U 1 1 53E9A9CA
P 4700 7400
F 0 "SW1" H 4700 7650 50  0000 C CNN
F 1 "MJTP1243" H 4700 7350 50  0000 C CNN
F 2 "" H 4700 7400 60  0000 C CNN
F 3 "" H 4700 7400 60  0000 C CNN
	1    4700 7400
	1    0    0    -1  
$EndComp
$Comp
L 3MM_HOLE H2
U 1 1 53E9AFD9
P 5850 7000
F 0 "H2" H 5800 7150 50  0000 C CNN
F 1 "3MM_HOLE" H 5850 6850 50  0000 C CNN
F 2 "" H 5850 7000 60  0000 C CNN
F 3 "" H 5850 7000 60  0000 C CNN
	1    5850 7000
	1    0    0    -1  
$EndComp
$Comp
L 3MM_HOLE H3
U 1 1 53E9B07B
P 5850 7400
F 0 "H3" H 5800 7550 50  0000 C CNN
F 1 "3MM_HOLE" H 5850 7250 50  0000 C CNN
F 2 "" H 5850 7400 60  0000 C CNN
F 3 "" H 5850 7400 60  0000 C CNN
	1    5850 7400
	1    0    0    -1  
$EndComp
$Comp
L 3MM_HOLE H4
U 1 1 53E9B0DD
P 5850 7800
F 0 "H4" H 5800 7950 50  0000 C CNN
F 1 "3MM_HOLE" H 5850 7650 50  0000 C CNN
F 2 "" H 5850 7800 60  0000 C CNN
F 3 "" H 5850 7800 60  0000 C CNN
	1    5850 7800
	1    0    0    -1  
$EndComp
Text Label 2175 5450 0    50   ~ 0
VCC
$Comp
L +5V #PWR01
U 1 1 53EA1139
P 2100 5350
F 0 "#PWR01" H 2100 5440 20  0001 C CNN
F 1 "+5V" H 2100 5455 50  0000 C CNN
F 2 "" H 2100 5350 60  0000 C CNN
F 3 "" H 2100 5350 60  0000 C CNN
	1    2100 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 53EA1339
P 1550 6350
F 0 "#PWR02" H 1550 6350 30  0001 C CNN
F 1 "GND" H 1550 6280 30  0001 C CNN
F 2 "" H 1550 6350 60  0000 C CNN
F 3 "" H 1550 6350 60  0000 C CNN
	1    1550 6350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 53EA1FD3
P 1500 1500
F 0 "#PWR03" H 1500 1500 30  0001 C CNN
F 1 "GND" H 1500 1430 30  0001 C CNN
F 2 "" H 1500 1500 60  0000 C CNN
F 3 "" H 1500 1500 60  0000 C CNN
	1    1500 1500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 53EA3202
P 4500 6050
F 0 "#PWR04" H 4500 6140 20  0001 C CNN
F 1 "+5V" H 4500 6155 50  0000 C CNN
F 2 "" H 4500 6050 60  0000 C CNN
F 3 "" H 4500 6050 60  0000 C CNN
	1    4500 6050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 53EA3587
P 2800 6350
F 0 "#PWR05" H 2800 6440 20  0001 C CNN
F 1 "+5V" H 2800 6455 50  0000 C CNN
F 2 "" H 2800 6350 60  0000 C CNN
F 3 "" H 2800 6350 60  0000 C CNN
	1    2800 6350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 53EA46AE
P 4000 7900
F 0 "#PWR06" H 4000 7900 30  0001 C CNN
F 1 "GND" H 4000 7830 30  0001 C CNN
F 2 "" H 4000 7900 60  0000 C CNN
F 3 "" H 4000 7900 60  0000 C CNN
	1    4000 7900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 53EA4CCF
P 1800 5050
F 0 "#PWR07" H 1800 5050 30  0001 C CNN
F 1 "GND" H 1800 4980 30  0001 C CNN
F 2 "" H 1800 5050 60  0000 C CNN
F 3 "" H 1800 5050 60  0000 C CNN
	1    1800 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 53EA51B2
P 6400 5700
F 0 "#PWR08" H 6400 5700 30  0001 C CNN
F 1 "GND" H 6400 5630 30  0001 C CNN
F 2 "" H 6400 5700 60  0000 C CNN
F 3 "" H 6400 5700 60  0000 C CNN
	1    6400 5700
	1    0    0    -1  
$EndComp
Connection ~ 1000 5450
Wire Wire Line
	650  5450 1100 5450
Wire Wire Line
	1000 5550 1000 5450
Wire Wire Line
	1000 6250 1000 5950
Connection ~ 1550 6050
Wire Wire Line
	2400 6250 2400 5950
Wire Wire Line
	1550 5800 1550 6350
Wire Wire Line
	1550 6050 1600 6050
Wire Wire Line
	2100 6050 2100 5950
Wire Wire Line
	2000 6050 2100 6050
Connection ~ 2100 5450
Wire Wire Line
	2400 5450 2400 5550
Wire Wire Line
	2100 2600 1850 2600
Wire Wire Line
	2100 2700 2100 2600
Wire Wire Line
	2700 2700 2100 2700
Wire Wire Line
	750  2500 850  2500
Wire Wire Line
	750  1975 750  2500
Wire Wire Line
	1500 1975 750  1975
Wire Wire Line
	1500 1600 1500 1975
Wire Wire Line
	4800 3100 4500 3100
Wire Wire Line
	4800 4350 4800 3100
Wire Wire Line
	3750 4850 3750 4350
Wire Wire Line
	3975 4850 3750 4850
Wire Wire Line
	3975 4750 2400 4750
Wire Wire Line
	2400 3000 2700 3000
Wire Wire Line
	2400 4750 2400 3000
Wire Wire Line
	4900 3000 4500 3000
Wire Wire Line
	4900 4850 4900 3000
Wire Wire Line
	5200 4850 4900 4850
Wire Wire Line
	5000 3900 4500 3900
Wire Wire Line
	5000 4750 5000 3900
Wire Wire Line
	5200 4750 5000 4750
Wire Wire Line
	1600 3000 1500 3000
Wire Wire Line
	1500 3700 1600 3700
Connection ~ 1800 3300
Wire Wire Line
	1800 2900 2700 2900
Wire Wire Line
	1800 3200 1800 2900
Wire Wire Line
	1500 3200 1800 3200
Wire Wire Line
	2700 3100 1500 3100
Wire Wire Line
	1500 3300 2700 3300
Wire Wire Line
	1800 3300 1800 3400
Wire Wire Line
	1800 3600 2700 3600
Wire Wire Line
	1500 3900 1800 3900
Wire Wire Line
	2500 3800 2500 4250
Wire Wire Line
	2700 3800 2500 3800
Wire Wire Line
	1500 1600 3100 1600
Wire Wire Line
	3100 1600 3100 1800
Wire Wire Line
	3100 1800 3000 1800
Wire Wire Line
	2300 2800 2700 2800
Wire Wire Line
	2600 2250 2600 2800
Wire Wire Line
	3100 2250 2600 2250
Wire Wire Line
	3100 2100 3100 2250
Wire Wire Line
	3000 2100 3100 2100
Connection ~ 1400 1600
Wire Wire Line
	650  1800 650  5450
Wire Wire Line
	1400 1800 650  1800
Wire Wire Line
	2500 4250 5500 4250
Wire Wire Line
	2600 3900 2700 3900
Wire Wire Line
	2600 4150 2600 3900
Wire Wire Line
	2600 4150 5300 4150
Wire Wire Line
	4500 3800 5500 3800
Wire Wire Line
	5200 3700 5200 2800
Wire Wire Line
	4500 3700 5200 3700
Wire Wire Line
	5100 3600 5100 3100
Wire Wire Line
	4500 3600 5100 3600
Wire Wire Line
	5000 3500 5000 2500
Wire Wire Line
	4500 3500 5000 3500
Connection ~ 1500 1400
Wire Wire Line
	2000 2100 1900 2100
Wire Wire Line
	3300 2000 3000 2000
Wire Wire Line
	3300 1900 3300 2000
Wire Wire Line
	3200 1900 3000 1900
Connection ~ 1600 1100
Wire Wire Line
	1600 2000 1600 1100
Wire Wire Line
	2000 2000 1600 2000
Connection ~ 1700 1200
Wire Wire Line
	1700 1200 1700 1900
Wire Wire Line
	1700 1900 2000 1900
Wire Wire Line
	1300 1200 2100 1200
Wire Wire Line
	2100 1200 2100 1300
Wire Wire Line
	2100 1300 2200 1300
Wire Wire Line
	2700 1300 2600 1300
Wire Wire Line
	2600 1200 2700 1200
Wire Wire Line
	2600 1100 2600 1200
Wire Wire Line
	1300 1100 2600 1100
Connection ~ 3900 2000
Wire Wire Line
	1500 1300 1300 1300
Wire Wire Line
	1300 1400 1500 1400
Wire Wire Line
	1400 1500 1300 1500
Wire Wire Line
	1400 1500 1400 1800
Wire Wire Line
	1300 1600 1400 1600
Wire Notes Line
	650  1050 500  1050
Connection ~ 1400 900 
Wire Wire Line
	1400 1000 1400 900 
Wire Wire Line
	1300 1000 1400 1000
Wire Wire Line
	1300 900  3700 900 
Wire Wire Line
	3700 900  3700 2000
Wire Wire Line
	3700 2000 4550 2000
Connection ~ 8200 700 
Wire Wire Line
	8200 700  8200 1000
Wire Wire Line
	7950 800  5700 800 
Wire Wire Line
	7800 5900 7800 1600
Connection ~ 7600 1200
Connection ~ 7600 700 
Wire Wire Line
	7600 2800 7500 2800
Connection ~ 6400 5600
Connection ~ 8200 1500
Wire Wire Line
	8200 1500 8200 1400
Wire Wire Line
	7950 1500 7950 800 
Wire Wire Line
	7950 1500 8400 1500
Wire Wire Line
	4450 2200 5700 2200
Wire Wire Line
	3900 2000 3900 1900
Wire Notes Line
	6950 900  6950 1000
Wire Notes Line
	5850 900  6950 900 
Wire Notes Line
	5850 2300 5850 900 
Wire Wire Line
	5000 2500 5500 2500
Wire Wire Line
	5700 2200 5700 800 
Wire Wire Line
	5200 1000 5200 600 
Wire Wire Line
	4900 1000 5200 1000
Wire Wire Line
	1300 700  5000 700 
Connection ~ 6400 2400
Wire Wire Line
	6500 2400 6400 2400
Connection ~ 6400 3200
Wire Wire Line
	6400 3200 6500 3200
Connection ~ 6400 4000
Wire Wire Line
	6400 4000 6500 4000
Connection ~ 6400 4800
Wire Wire Line
	6400 4800 6500 4800
Wire Wire Line
	6400 1600 6500 1600
Wire Wire Line
	6400 1600 6400 5700
Wire Wire Line
	6000 4250 5900 4250
Wire Wire Line
	6000 5200 6000 4250
Wire Wire Line
	6500 5200 6000 5200
Wire Wire Line
	6100 4400 6500 4400
Wire Wire Line
	6100 3800 6100 4400
Wire Wire Line
	5900 3800 6100 3800
Wire Wire Line
	6200 3600 6500 3600
Wire Wire Line
	6200 3400 6200 3600
Wire Wire Line
	5900 3400 6200 3400
Wire Wire Line
	6200 2800 6500 2800
Wire Wire Line
	6200 3100 6200 2800
Wire Wire Line
	5900 3100 6200 3100
Wire Wire Line
	6100 2000 6500 2000
Wire Wire Line
	6100 2800 6100 2000
Wire Wire Line
	5900 2800 6100 2800
Wire Wire Line
	6000 1200 6500 1200
Wire Wire Line
	6000 2500 6000 1200
Wire Wire Line
	5900 2500 6000 2500
Wire Notes Line
	7000 6700 7000 5800
Wire Notes Line
	10500 6700 7000 6700
Connection ~ 8900 6600
Connection ~ 9200 3300
Wire Wire Line
	9200 6600 9200 3300
Connection ~ 7800 1600
Wire Wire Line
	7800 5900 7400 5900
Connection ~ 7900 2400
Wire Wire Line
	7900 6000 7700 6000
Wire Wire Line
	7700 6000 7700 6100
Connection ~ 8000 3200
Connection ~ 8100 4000
Wire Wire Line
	8100 5800 8300 5800
Wire Wire Line
	8300 5800 8300 6100
Connection ~ 8200 4800
Wire Wire Line
	8200 5700 8600 5700
Wire Wire Line
	8600 5700 8600 6100
Connection ~ 8300 5600
Wire Wire Line
	8900 5600 8900 6100
Wire Wire Line
	7400 5900 7400 6100
Wire Wire Line
	7400 6600 7400 6500
Wire Wire Line
	7500 1600 8600 1600
Wire Wire Line
	7900 2400 7500 2400
Wire Wire Line
	7900 1800 7900 6000
Wire Wire Line
	8600 1800 7900 1800
Wire Wire Line
	8000 3200 7500 3200
Wire Wire Line
	8000 2000 8000 6100
Wire Wire Line
	8600 2000 8000 2000
Wire Wire Line
	8100 4000 7500 4000
Wire Wire Line
	8100 2400 8100 5800
Wire Wire Line
	8600 2400 8100 2400
Wire Wire Line
	8200 4800 7500 4800
Wire Wire Line
	8200 2600 8200 5700
Wire Wire Line
	7500 5600 8900 5600
Wire Wire Line
	8300 2800 8300 5600
Wire Wire Line
	5200 600  9700 600 
Wire Wire Line
	9700 600  9700 1400
Wire Wire Line
	5400 700  8500 700 
Wire Wire Line
	8500 700  8500 1400
Connection ~ 8400 3000
Connection ~ 8400 3100
Wire Wire Line
	8400 3100 8600 3100
Wire Wire Line
	8400 1500 8400 3300
Wire Wire Line
	8600 3000 8400 3000
Connection ~ 7600 4400
Wire Wire Line
	7600 4400 7500 4400
Connection ~ 7600 3600
Wire Wire Line
	7600 3600 7500 3600
Connection ~ 7600 2800
Connection ~ 7600 2000
Wire Wire Line
	7600 2000 7500 2000
Wire Wire Line
	7600 1200 7500 1200
Wire Wire Line
	7600 700  7600 5200
Wire Wire Line
	7600 5200 7500 5200
Wire Wire Line
	8200 2600 8600 2600
Wire Wire Line
	8300 2800 8600 2800
Connection ~ 3900 700 
Wire Wire Line
	5300 3400 5500 3400
Wire Wire Line
	5300 4150 5300 3400
Wire Wire Line
	5400 3100 5400 3100
Wire Wire Line
	9700 1400 9600 1400
Connection ~ 5400 1400
Wire Wire Line
	8500 1400 8600 1400
Wire Wire Line
	9700 1600 9600 1600
Wire Wire Line
	9700 1900 9700 1600
Wire Wire Line
	10000 1900 9700 1900
Wire Wire Line
	10000 2000 9600 2000
Wire Wire Line
	10000 2400 9600 2400
Wire Wire Line
	9700 2500 10000 2500
Wire Wire Line
	9700 2800 9700 2500
Wire Wire Line
	9600 2800 9700 2800
Connection ~ 9700 3100
Wire Wire Line
	8400 3300 9700 3300
Wire Wire Line
	9700 3100 9600 3100
Wire Wire Line
	9700 3300 9700 3000
Wire Wire Line
	9700 3000 9600 3000
Connection ~ 7700 6600
Connection ~ 8000 6600
Wire Wire Line
	7700 6600 7700 6500
Connection ~ 8300 6600
Wire Wire Line
	8000 6600 8000 6500
Connection ~ 8600 6600
Wire Wire Line
	8300 6600 8300 6500
Wire Wire Line
	8600 6600 8600 6500
Wire Wire Line
	7400 6600 9200 6600
Wire Wire Line
	8900 6600 8900 6500
Connection ~ 5400 2200
Wire Wire Line
	5000 1100 4900 1100
Wire Wire Line
	4900 1400 5400 1400
Wire Wire Line
	5000 900  4900 900 
Wire Wire Line
	5000 700  5000 900 
Wire Wire Line
	5400 2200 5400 1900
Connection ~ 5000 1400
Wire Wire Line
	5400 700  5400 1500
Wire Wire Line
	5000 1100 5000 1500
Wire Wire Line
	5000 2000 5000 1900
Wire Wire Line
	4950 2000 5000 2000
Connection ~ 4450 2000
Connection ~ 3900 1400
Wire Wire Line
	3900 700  3900 1500
Wire Wire Line
	4450 1750 4450 2200
Connection ~ 1400 700 
Wire Wire Line
	3900 1400 4000 1400
Wire Wire Line
	5200 2800 5500 2800
Wire Wire Line
	5100 3100 5500 3100
Wire Wire Line
	1400 800  1300 800 
Wire Wire Line
	1400 700  1400 800 
Wire Wire Line
	2700 3500 2000 3500
Wire Wire Line
	2000 3500 2000 4450
Wire Wire Line
	2000 4450 1700 4450
Wire Wire Line
	1100 4450 1000 4450
Wire Wire Line
	1000 4200 1000 4550
Wire Wire Line
	1000 4200 1900 4200
Wire Wire Line
	1900 4200 1900 3400
Wire Wire Line
	1900 3400 2700 3400
Connection ~ 1000 4450
Wire Wire Line
	1800 4550 1800 4450
Connection ~ 1800 4450
Wire Wire Line
	1000 4950 1000 5050
Wire Wire Line
	5000 5050 5000 4950
Wire Wire Line
	5000 4950 5200 4950
Wire Wire Line
	3975 4950 3750 4950
Wire Wire Line
	3750 4950 3750 5050
Wire Wire Line
	5100 4650 5200 4650
Wire Wire Line
	3850 4550 3850 4650
Wire Wire Line
	3850 4650 3975 4650
Wire Wire Line
	1800 4950 1800 5050
Wire Wire Line
	4500 3200 4600 3200
Wire Wire Line
	4500 3400 4700 3400
Wire Wire Line
	2100 3200 2700 3200
Wire Wire Line
	1600 7250 1600 6550
Wire Wire Line
	1600 6550 750  6550
Wire Wire Line
	750  6550 750  2700
Wire Wire Line
	750  2700 850  2700
Wire Wire Line
	2100 6550 2100 6450
Wire Wire Line
	2400 6550 2400 6450
Connection ~ 2400 6450
Wire Wire Line
	1800 6950 1800 7350
Wire Wire Line
	2400 6950 2400 7350
Wire Wire Line
	2400 7800 2400 7750
Wire Wire Line
	1600 7800 5650 7800
Wire Wire Line
	1800 7750 1800 7800
Connection ~ 1800 7800
Wire Wire Line
	2100 7750 2100 7800
Connection ~ 2100 7800
Wire Wire Line
	1500 7550 1600 7550
Wire Wire Line
	1600 7550 1600 7800
Wire Wire Line
	1500 7050 2900 7050
Connection ~ 2400 7050
Wire Wire Line
	2800 6850 2900 6850
Wire Wire Line
	1800 3900 1800 3600
Wire Wire Line
	2700 2600 2200 2600
Wire Wire Line
	2200 2600 2200 5150
Wire Wire Line
	2200 5150 5100 5150
Wire Wire Line
	2300 2800 2300 4850
Wire Wire Line
	2300 4850 2700 4850
Wire Wire Line
	2700 4850 2700 6350
Wire Wire Line
	2700 6350 1800 6350
Connection ~ 2600 2800
Wire Wire Line
	1800 6350 1800 6550
Wire Wire Line
	1500 7250 2100 7250
Wire Wire Line
	1500 7150 1800 7150
Connection ~ 1800 7150
Connection ~ 1600 7250
Wire Wire Line
	4500 6050 4500 6350
Wire Wire Line
	4400 6950 5100 6950
Wire Wire Line
	4500 6950 4500 6850
Wire Wire Line
	4800 6950 4800 6850
Connection ~ 4500 6950
Wire Wire Line
	4800 6150 4800 6450
Connection ~ 4500 6150
Wire Wire Line
	3900 6950 4000 6950
Wire Wire Line
	5100 5150 5100 7400
Connection ~ 4800 6950
Wire Wire Line
	5100 7400 5000 7400
Connection ~ 5100 6950
Wire Wire Line
	5550 6600 5550 7800
Wire Wire Line
	5550 6600 5650 6600
Wire Wire Line
	5650 7000 5550 7000
Connection ~ 5550 7000
Wire Wire Line
	5650 7400 5550 7400
Connection ~ 5550 7400
Connection ~ 5550 7800
Connection ~ 2400 7800
Wire Wire Line
	4400 7400 4000 7400
Wire Wire Line
	2100 6950 2100 7350
Connection ~ 2100 7250
Wire Wire Line
	3750 4350 4800 4350
Connection ~ 1550 6250
Wire Wire Line
	1500 1300 1500 1500
Wire Wire Line
	2100 5350 2100 5550
Wire Wire Line
	2000 5450 2400 5450
Wire Wire Line
	1000 6250 2400 6250
Wire Wire Line
	4500 6150 4800 6150
Wire Wire Line
	2800 6350 2800 6850
Wire Wire Line
	2100 6450 2800 6450
Connection ~ 2800 6450
Wire Wire Line
	4000 7400 4000 7900
Connection ~ 4000 7800
Wire Wire Line
	6400 5600 6500 5600
$Comp
L +5V #PWR09
U 1 1 53EA5AAF
P 4700 2900
F 0 "#PWR09" H 4700 2990 20  0001 C CNN
F 1 "+5V" H 4700 3005 50  0000 C CNN
F 2 "" H 4700 2900 60  0000 C CNN
F 3 "" H 4700 2900 60  0000 C CNN
	1    4700 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3400 4700 2900
$Comp
L GND #PWR010
U 1 1 53EA5DF1
P 4600 3300
F 0 "#PWR010" H 4600 3300 30  0001 C CNN
F 1 "GND" H 4600 3230 30  0001 C CNN
F 2 "" H 4600 3300 60  0000 C CNN
F 3 "" H 4600 3300 60  0000 C CNN
	1    4600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3200 4600 3300
$Comp
L +5V #PWR011
U 1 1 53EA627E
P 5100 4550
F 0 "#PWR011" H 5100 4640 20  0001 C CNN
F 1 "+5V" H 5100 4655 50  0000 C CNN
F 2 "" H 5100 4550 60  0000 C CNN
F 3 "" H 5100 4550 60  0000 C CNN
	1    5100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4650 5100 4550
$Comp
L GND #PWR012
U 1 1 53EA669E
P 5000 5050
F 0 "#PWR012" H 5000 5050 30  0001 C CNN
F 1 "GND" H 5000 4980 30  0001 C CNN
F 2 "" H 5000 5050 60  0000 C CNN
F 3 "" H 5000 5050 60  0000 C CNN
	1    5000 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 53EA6823
P 3750 5050
F 0 "#PWR013" H 3750 5050 30  0001 C CNN
F 1 "GND" H 3750 4980 30  0001 C CNN
F 2 "" H 3750 5050 60  0000 C CNN
F 3 "" H 3750 5050 60  0000 C CNN
	1    3750 5050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 53EA68EB
P 3850 4550
F 0 "#PWR014" H 3850 4640 20  0001 C CNN
F 1 "+5V" H 3850 4655 50  0000 C CNN
F 2 "" H 3850 4550 60  0000 C CNN
F 3 "" H 3850 4550 60  0000 C CNN
	1    3850 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 53EA6BB5
P 1000 5050
F 0 "#PWR015" H 1000 5050 30  0001 C CNN
F 1 "GND" H 1000 4980 30  0001 C CNN
F 2 "" H 1000 5050 60  0000 C CNN
F 3 "" H 1000 5050 60  0000 C CNN
	1    1000 5050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR016
U 1 1 53EA796F
P 1600 2900
F 0 "#PWR016" H 1600 2990 20  0001 C CNN
F 1 "+5V" H 1600 3005 50  0000 C CNN
F 2 "" H 1600 2900 60  0000 C CNN
F 3 "" H 1600 2900 60  0000 C CNN
	1    1600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3000 1600 2900
$Comp
L GND #PWR017
U 1 1 53EA7E7B
P 1700 4100
F 0 "#PWR017" H 1700 4100 30  0001 C CNN
F 1 "GND" H 1700 4030 30  0001 C CNN
F 2 "" H 1700 4100 60  0000 C CNN
F 3 "" H 1700 4100 60  0000 C CNN
	1    1700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4100 1700 4000
Wire Wire Line
	1700 4000 1500 4000
$Comp
L +5V #PWR018
U 1 1 53EA813E
P 1600 3600
F 0 "#PWR018" H 1600 3690 20  0001 C CNN
F 1 "+5V" H 1600 3705 50  0000 C CNN
F 2 "" H 1600 3600 60  0000 C CNN
F 3 "" H 1600 3600 60  0000 C CNN
	1    1600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3700 1600 3600
$Comp
L GND #PWR019
U 1 1 53EA85B2
P 1800 3400
F 0 "#PWR019" H 1800 3400 30  0001 C CNN
F 1 "GND" H 1800 3330 30  0001 C CNN
F 2 "" H 1800 3400 60  0000 C CNN
F 3 "" H 1800 3400 60  0000 C CNN
	1    1800 3400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 53EA8781
P 2100 3050
F 0 "#PWR020" H 2100 3140 20  0001 C CNN
F 1 "+5V" H 2100 3155 50  0000 C CNN
F 2 "" H 2100 3050 60  0000 C CNN
F 3 "" H 2100 3050 60  0000 C CNN
	1    2100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3200 2100 3050
$Comp
L +5V #PWR021
U 1 1 53EA8C88
P 3300 1900
F 0 "#PWR021" H 3300 1990 20  0001 C CNN
F 1 "+5V" H 3300 2005 50  0000 C CNN
F 2 "" H 3300 1900 60  0000 C CNN
F 3 "" H 3300 1900 60  0000 C CNN
	1    3300 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 53EA917D
P 3200 2100
F 0 "#PWR022" H 3200 2100 30  0001 C CNN
F 1 "GND" H 3200 2030 30  0001 C CNN
F 2 "" H 3200 2100 60  0000 C CNN
F 3 "" H 3200 2100 60  0000 C CNN
	1    3200 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 53EA924F
P 1800 2100
F 0 "#PWR023" H 1800 2100 30  0001 C CNN
F 1 "GND" H 1800 2030 30  0001 C CNN
F 2 "" H 1800 2100 60  0000 C CNN
F 3 "" H 1800 2100 60  0000 C CNN
	1    1800 2100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 53EA96B5
P 1900 1500
F 0 "#PWR024" H 1900 1590 20  0001 C CNN
F 1 "+5V" H 1900 1605 50  0000 C CNN
F 2 "" H 1900 1500 60  0000 C CNN
F 3 "" H 1900 1500 60  0000 C CNN
	1    1900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2100 1900 1500
Wire Wire Line
	3200 2100 3200 1900
Wire Wire Line
	2000 1800 1800 1800
Wire Wire Line
	1800 1800 1800 2100
Wire Wire Line
	2700 3700 1700 3700
Wire Wire Line
	1700 3700 1700 3800
Wire Wire Line
	1700 3800 1500 3800
Wire Notes Line
	5850 2300 3600 2300
Wire Notes Line
	3600 2300 3600 1050
Wire Notes Line
	3600 1050 1250 1050
Text Notes 2150 1025 0    50   ~ 0
Electrically Isolated
Text Label 2975 5150 0    50   ~ 0
~RESET
Text Label 3000 7800 0    50   ~ 0
GND
Text Label 2525 2700 2    50   ~ 0
RXD
Text Label 2525 2800 2    50   ~ 0
TXD
$Comp
L C_VERT C11
U 1 1 53EA3930
P 3000 5750
F 0 "C11" H 3020 5840 50  0000 L CNN
F 1 ".1uF" H 3020 5660 50  0000 L CNN
F 2 "" H 3038 5600 30  0000 C CNN
F 3 "" H 3000 5750 60  0000 C CNN
	1    3000 5750
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C12
U 1 1 53EA3BB3
P 3300 5750
F 0 "C12" H 3320 5840 50  0000 L CNN
F 1 ".1uF" H 3320 5660 50  0000 L CNN
F 2 "" H 3338 5600 30  0000 C CNN
F 3 "" H 3300 5750 60  0000 C CNN
	1    3300 5750
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C13
U 1 1 53EA3C1E
P 3600 5750
F 0 "C13" H 3620 5840 50  0000 L CNN
F 1 ".1uF" H 3620 5660 50  0000 L CNN
F 2 "" H 3638 5600 30  0000 C CNN
F 3 "" H 3600 5750 60  0000 C CNN
	1    3600 5750
	1    0    0    -1  
$EndComp
$Comp
L C_VERT C14
U 1 1 53EA3C8A
P 3850 5750
F 0 "C14" H 3870 5840 50  0000 L CNN
F 1 ".1uF" H 3870 5660 50  0000 L CNN
F 2 "" H 3888 5600 30  0000 C CNN
F 3 "" H 3850 5750 60  0000 C CNN
	1    3850 5750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR025
U 1 1 53EA3CF1
P 3000 5350
F 0 "#PWR025" H 3000 5440 20  0001 C CNN
F 1 "+5V" H 3000 5455 50  0000 C CNN
F 2 "" H 3000 5350 60  0000 C CNN
F 3 "" H 3000 5350 60  0000 C CNN
	1    3000 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 53EA3DE7
P 3000 6150
F 0 "#PWR026" H 3000 6150 30  0001 C CNN
F 1 "GND" H 3000 6080 30  0001 C CNN
F 2 "" H 3000 6150 60  0000 C CNN
F 3 "" H 3000 6150 60  0000 C CNN
	1    3000 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5350 3000 5550
Wire Wire Line
	3000 5450 3850 5450
Wire Wire Line
	3850 5450 3850 5550
Connection ~ 3000 5450
Wire Wire Line
	3600 5550 3600 5450
Connection ~ 3600 5450
Wire Wire Line
	3300 5550 3300 5450
Connection ~ 3300 5450
Wire Wire Line
	3000 6150 3000 5950
Wire Wire Line
	3000 6050 3850 6050
Wire Wire Line
	3850 6050 3850 5950
Connection ~ 3000 6050
Wire Wire Line
	3600 5950 3600 6050
Connection ~ 3600 6050
Wire Wire Line
	3300 5950 3300 6050
Connection ~ 3300 6050
Text Notes 3125 6150 0    50   ~ 0
Filter Capacitors
Text Notes 3250 7450 0    50   ~ 0
Reset Circuitry
Text Notes 925  7850 0    50   ~ 0
Programmer
Text Label 800  5450 0    50   ~ 0
LPWR
$EndSCHEMATC
