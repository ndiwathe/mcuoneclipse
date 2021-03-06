EESchema Schematic File Version 4
LIBS:FT2232_ESP32_Debug-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "FT2232 Debug Shield for ESP32"
Date "2019-10-27"
Rev "V0.1"
Comp "Hochschule Luzern, T&A"
Comment1 "Erich Styger, erich.styger@hslu.ch"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L device:R_Small R1
U 1 1 5DB580D7
P 6200 2900
F 0 "R1" H 6259 2946 50  0000 L CNN
F 1 "4k7" H 6259 2855 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6200 2900 50  0001 C CNN
F 3 "~" H 6200 2900 50  0001 C CNN
	1    6200 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 5DB584B6
P 7400 3250
F 0 "#PWR0101" H 7400 3100 50  0001 C CNN
F 1 "+3V3" H 7415 3423 50  0000 C CNN
F 2 "" H 7400 3250 50  0001 C CNN
F 3 "" H 7400 3250 50  0001 C CNN
	1    7400 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DB58AC3
P 7900 3400
F 0 "#PWR0102" H 7900 3150 50  0001 C CNN
F 1 "GND" H 7905 3227 50  0000 C CNN
F 2 "" H 7900 3400 50  0001 C CNN
F 3 "" H 7900 3400 50  0001 C CNN
	1    7900 3400
	1    0    0    -1  
$EndComp
$Comp
L swd_jtag_10pin:SWD_JTAG_10pin U2
U 1 1 5DB5DDF7
P 4750 3500
F 0 "U2" H 5150 4125 50  0000 C CNN
F 1 "SWD_JTAG_10pin" H 5150 4034 50  0000 C CNN
F 2 "McuOnEclipse:SWD_Pin_Header_Straight_2x05_Pitch1.27mm" H 4750 3500 50  0001 C CNN
F 3 "" H 4750 3500 50  0001 C CNN
	1    4750 3500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DB6C07A
P 7900 3250
F 0 "#FLG0101" H 7900 3325 50  0001 C CNN
F 1 "PWR_FLAG" H 7900 3423 50  0000 C CNN
F 2 "" H 7900 3250 50  0001 C CNN
F 3 "~" H 7900 3250 50  0001 C CNN
	1    7900 3250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5DB6C6FE
P 7400 3400
F 0 "#FLG0102" H 7400 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 7400 3573 50  0000 C CNN
F 2 "" H 7400 3400 50  0001 C CNN
F 3 "~" H 7400 3400 50  0001 C CNN
	1    7400 3400
	-1   0    0    1   
$EndComp
NoConn ~ 4650 3400
$Comp
L power:GND #PWR0103
U 1 1 5DB6E2DC
P 4450 3650
F 0 "#PWR0103" H 4450 3400 50  0001 C CNN
F 1 "GND" H 4455 3477 50  0000 C CNN
F 2 "" H 4450 3650 50  0001 C CNN
F 3 "" H 4450 3650 50  0001 C CNN
	1    4450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3500 4450 3500
Wire Wire Line
	4650 3200 4450 3200
Wire Wire Line
	4450 3200 4450 3300
Wire Wire Line
	4650 3300 4450 3300
Connection ~ 4450 3300
Wire Wire Line
	4450 3300 4450 3500
Wire Wire Line
	4450 3500 4450 3650
Connection ~ 4450 3500
$Comp
L power:+3V3 #PWR0104
U 1 1 5DB70177
P 4450 2900
F 0 "#PWR0104" H 4450 2750 50  0001 C CNN
F 1 "+3V3" H 4465 3073 50  0000 C CNN
F 2 "" H 4450 2900 50  0001 C CNN
F 3 "" H 4450 2900 50  0001 C CNN
	1    4450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3100 4450 3100
Wire Wire Line
	4450 3100 4450 2900
$Comp
L power:+3V3 #PWR04
U 1 1 5DB71359
P 6200 2700
F 0 "#PWR04" H 6200 2550 50  0001 C CNN
F 1 "+3V3" H 6215 2873 50  0000 C CNN
F 2 "" H 6200 2700 50  0001 C CNN
F 3 "" H 6200 2700 50  0001 C CNN
	1    6200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2800 6200 2700
$Comp
L device:R_Small R2
U 1 1 5DB71C68
P 6200 3400
F 0 "R2" H 6259 3446 50  0000 L CNN
F 1 "4k7" H 6259 3355 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6200 3400 50  0001 C CNN
F 3 "~" H 6200 3400 50  0001 C CNN
	1    6200 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5DB7276B
P 6200 3650
F 0 "#PWR05" H 6200 3400 50  0001 C CNN
F 1 "GND" H 6205 3477 50  0000 C CNN
F 2 "" H 6200 3650 50  0001 C CNN
F 3 "" H 6200 3650 50  0001 C CNN
	1    6200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3650 6200 3500
Wire Wire Line
	5650 3200 6200 3200
Wire Wire Line
	6200 3200 6200 3300
Wire Wire Line
	5650 3100 6200 3100
Wire Wire Line
	6200 3100 6200 3000
$Comp
L ft2232_breakout:FT2232_Breakout U1
U 1 1 5DB741E2
P 3300 3500
F 0 "U1" H 3275 4475 50  0000 C CNN
F 1 "FT2232_Breakout" H 3275 4384 50  0000 C CNN
F 2 "McuOnEclipse:FT2232_Breakout_Pin_Header_Straight_2x19_Pitch2.54mm" H 3300 3500 50  0001 C CNN
F 3 "" H 3300 3500 50  0001 C CNN
	1    3300 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DB7591E
P 2450 2800
F 0 "#PWR01" H 2450 2550 50  0001 C CNN
F 1 "GND" H 2455 2627 50  0000 C CNN
F 2 "" H 2450 2800 50  0001 C CNN
F 3 "" H 2450 2800 50  0001 C CNN
	1    2450 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2750 2450 2750
Wire Wire Line
	2450 2750 2450 2800
Wire Wire Line
	3600 4550 3850 4550
Wire Wire Line
	3850 4550 3850 4650
$Comp
L power:GND #PWR02
U 1 1 5DB76F25
P 3850 4650
F 0 "#PWR02" H 3850 4400 50  0001 C CNN
F 1 "GND" H 3855 4477 50  0000 C CNN
F 2 "" H 3850 4650 50  0001 C CNN
F 3 "" H 3850 4650 50  0001 C CNN
	1    3850 4650
	1    0    0    -1  
$EndComp
NoConn ~ 2950 2850
NoConn ~ 2950 2950
NoConn ~ 2950 3450
NoConn ~ 2950 3550
NoConn ~ 2950 3650
NoConn ~ 2950 3750
NoConn ~ 2950 3850
NoConn ~ 2950 3950
NoConn ~ 2950 4050
NoConn ~ 2950 4150
NoConn ~ 2950 4250
NoConn ~ 2950 4350
NoConn ~ 2950 4450
NoConn ~ 2950 4550
NoConn ~ 3600 4450
NoConn ~ 3600 4350
NoConn ~ 3600 4050
NoConn ~ 3600 3950
NoConn ~ 3600 3850
NoConn ~ 3600 3750
NoConn ~ 3600 3650
NoConn ~ 3600 3550
NoConn ~ 3600 3450
NoConn ~ 3600 3350
NoConn ~ 3600 3250
NoConn ~ 3600 3150
NoConn ~ 3600 3050
NoConn ~ 3600 2950
NoConn ~ 3600 2850
NoConn ~ 3600 2750
$Comp
L conn:Conn_01x03 J1
U 1 1 5DB7AAB2
P 4750 4400
F 0 "J1" H 4830 4442 50  0000 L CNN
F 1 "Conn_01x03" H 4830 4351 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4750 4400 50  0001 C CNN
F 3 "~" H 4750 4400 50  0001 C CNN
	1    4750 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5DB7B39E
P 4400 4650
F 0 "#PWR03" H 4400 4400 50  0001 C CNN
F 1 "GND" H 4405 4477 50  0000 C CNN
F 2 "" H 4400 4650 50  0001 C CNN
F 3 "" H 4400 4650 50  0001 C CNN
	1    4400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4650 4400 4500
Wire Wire Line
	4400 4500 4550 4500
Text GLabel 4550 4300 0    50   Input ~ 0
Rx
Text GLabel 4550 4400 0    50   Output ~ 0
Tx
Text GLabel 3600 4250 2    50   Input ~ 0
Tx
Text GLabel 3600 4150 2    50   Output ~ 0
Rx
Text GLabel 5650 3300 2    50   Output ~ 0
TDO
Text GLabel 5650 3400 2    50   Input ~ 0
TDI
Wire Wire Line
	6200 3200 6500 3200
Connection ~ 6200 3200
Text GLabel 6500 3200 2    50   Output ~ 0
TCLK
Text GLabel 2950 3050 0    50   Input ~ 0
TCLK
Text GLabel 2950 3250 0    50   Output ~ 0
TDO
Text GLabel 2950 3150 0    50   Input ~ 0
TDI
Wire Wire Line
	6200 3100 6500 3100
Connection ~ 6200 3100
Text GLabel 6500 3100 2    50   Output ~ 0
TMS
Text GLabel 2950 3350 0    50   Input ~ 0
TMS
Wire Wire Line
	7900 3250 7900 3400
Wire Wire Line
	7400 3250 7400 3400
NoConn ~ 5650 3500
$Comp
L mechanical:MountingHole H1
U 1 1 5DB6138D
P 7350 4150
F 0 "H1" H 7450 4196 50  0000 L CNN
F 1 "QR" H 7450 4105 50  0000 L CNN
F 2 "McuOnEclipse:QR_McuOnEclipse_Silkscreen_9x9mm" H 7350 4150 50  0001 C CNN
F 3 "~" H 7350 4150 50  0001 C CNN
	1    7350 4150
	1    0    0    -1  
$EndComp
$Comp
L mechanical:MountingHole H2
U 1 1 5DB61582
P 7850 4150
F 0 "H2" H 7950 4196 50  0000 L CNN
F 1 "HSLU" H 7950 4105 50  0000 L CNN
F 2 "McuOnEclipse:HSLU_Logo_Silkscreen" H 7850 4150 50  0001 C CNN
F 3 "~" H 7850 4150 50  0001 C CNN
	1    7850 4150
	1    0    0    -1  
$EndComp
Text Notes 9250 7000 0    50   ~ 0
Ideas for next version:\n- move JTAG header towards UART pins\n- rotate JTAG pin 1 header (strraigt cable)\n- rotate UART headers by 90 degrees\n- mark if Rx/Tx are input/output
$EndSCHEMATC
