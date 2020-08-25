EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PressureSensor-rescue:SM5420E-Sij_Sensors U1
U 1 1 5EFB1A9D
P 5100 4150
F 0 "U1" H 5100 4965 50  0000 C CNN
F 1 "SM5420E" H 5100 4874 50  0000 C CNN
F 2 "Sij_Sensors:SM5420E" H 5100 4150 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/589/SM5420E_40ds5468.02_1-1100662.pdf" H 5100 4150 50  0001 C CNN
	1    5100 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5EFB2106
P 7500 3650
F 0 "J1" H 7580 3642 50  0000 L CNN
F 1 "ArduinoConn" H 7580 3551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7500 3650 50  0001 C CNN
F 3 "~" H 7500 3650 50  0001 C CNN
	1    7500 3650
	1    0    0    -1  
$EndComp
Text Label 4750 3700 2    50   ~ 0
+Sig
Text Label 4750 3900 2    50   ~ 0
GND
Text Label 5450 3600 0    50   ~ 0
+Vexc
Text Label 5450 3800 0    50   ~ 0
-Sig
Text Label 7300 3550 2    50   ~ 0
+Vexc
Text Label 7300 3650 2    50   ~ 0
+Sig
Text Label 7300 3750 2    50   ~ 0
-Sig
Text Label 7300 3850 2    50   ~ 0
GND
Wire Wire Line
	7300 3850 7050 3850
Wire Wire Line
	7050 3850 7050 3900
Wire Wire Line
	7300 3550 7050 3550
Wire Wire Line
	7050 3550 7050 3500
$Comp
L power:GND #PWR01
U 1 1 5EFB42D0
P 7050 3900
F 0 "#PWR01" H 7050 3650 50  0001 C CNN
F 1 "GND" H 7055 3727 50  0000 C CNN
F 2 "" H 7050 3900 50  0001 C CNN
F 3 "" H 7050 3900 50  0001 C CNN
	1    7050 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 5EF2EC74
P 7050 3500
F 0 "#PWR0101" H 7050 3350 50  0001 C CNN
F 1 "+3.3V" H 7065 3673 50  0000 C CNN
F 2 "" H 7050 3500 50  0001 C CNN
F 3 "" H 7050 3500 50  0001 C CNN
	1    7050 3500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EF2F3C2
P 7050 3500
F 0 "#FLG0101" H 7050 3575 50  0001 C CNN
F 1 "PWR_FLAG" V 7050 3627 50  0000 L CNN
F 2 "" H 7050 3500 50  0001 C CNN
F 3 "~" H 7050 3500 50  0001 C CNN
	1    7050 3500
	0    -1   -1   0   
$EndComp
Connection ~ 7050 3500
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EF2FBC3
P 7050 3900
F 0 "#FLG0102" H 7050 3975 50  0001 C CNN
F 1 "PWR_FLAG" V 7050 4027 50  0000 L CNN
F 2 "" H 7050 3900 50  0001 C CNN
F 3 "~" H 7050 3900 50  0001 C CNN
	1    7050 3900
	0    -1   -1   0   
$EndComp
Connection ~ 7050 3900
Text Notes 2050 1600 0    200  ~ 40
Pressure Sensor PCB for the PIP and PEEP Valve\n
Text Notes 4800 4200 0    50   ~ 0
Pressure Sensor
Text Notes 6650 4350 0    50   ~ 0
Connections to the Arduino\n
$EndSCHEMATC
