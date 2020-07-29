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
L Sij_Sensors:SM5420E U1
U 1 1 5EFB1A9D
P 5650 3750
F 0 "U1" H 5650 4565 50  0000 C CNN
F 1 "SM5420E" H 5650 4474 50  0000 C CNN
F 2 "Sij_Sensors:SM5420E" H 5650 3750 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/589/SM5420E_40ds5468.02_1-1100662.pdf" H 5650 3750 50  0001 C CNN
	1    5650 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5EFB2106
P 7250 3300
F 0 "J1" H 7330 3292 50  0000 L CNN
F 1 "Conn_01x04" H 7330 3201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 7250 3300 50  0001 C CNN
F 3 "~" H 7250 3300 50  0001 C CNN
	1    7250 3300
	1    0    0    -1  
$EndComp
Text Label 5300 3300 2    50   ~ 0
+Sig
Text Label 5300 3500 2    50   ~ 0
GND
Text Label 6000 3200 0    50   ~ 0
+Vexc
Text Label 6000 3400 0    50   ~ 0
-Sig
Text Label 7050 3200 2    50   ~ 0
+Vexc
Text Label 7050 3300 2    50   ~ 0
+Sig
Text Label 7050 3400 2    50   ~ 0
-Sig
Text Label 7050 3500 2    50   ~ 0
GND
Wire Wire Line
	7050 3500 6800 3500
Wire Wire Line
	6800 3500 6800 3550
Wire Wire Line
	7050 3200 6800 3200
Wire Wire Line
	6800 3200 6800 3150
$Comp
L power:GND #PWR01
U 1 1 5EFB42D0
P 6800 3550
F 0 "#PWR01" H 6800 3300 50  0001 C CNN
F 1 "GND" H 6805 3377 50  0000 C CNN
F 2 "" H 6800 3550 50  0001 C CNN
F 3 "" H 6800 3550 50  0001 C CNN
	1    6800 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 5EF2EC74
P 6800 3150
F 0 "#PWR0101" H 6800 3000 50  0001 C CNN
F 1 "+3.3V" H 6815 3323 50  0000 C CNN
F 2 "" H 6800 3150 50  0001 C CNN
F 3 "" H 6800 3150 50  0001 C CNN
	1    6800 3150
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EF2F3C2
P 6800 3150
F 0 "#FLG0101" H 6800 3225 50  0001 C CNN
F 1 "PWR_FLAG" V 6800 3277 50  0000 L CNN
F 2 "" H 6800 3150 50  0001 C CNN
F 3 "~" H 6800 3150 50  0001 C CNN
	1    6800 3150
	0    -1   -1   0   
$EndComp
Connection ~ 6800 3150
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EF2FBC3
P 6800 3550
F 0 "#FLG0102" H 6800 3625 50  0001 C CNN
F 1 "PWR_FLAG" V 6800 3677 50  0000 L CNN
F 2 "" H 6800 3550 50  0001 C CNN
F 3 "~" H 6800 3550 50  0001 C CNN
	1    6800 3550
	0    -1   -1   0   
$EndComp
Connection ~ 6800 3550
$EndSCHEMATC
