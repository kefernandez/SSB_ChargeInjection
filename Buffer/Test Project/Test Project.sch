EESchema Schematic File Version 4
LIBS:Test Project-cache
EELAYER 26 0
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
L user_zliao:FullBridgeCell U1
U 1 1 5D2E18FC
P 6025 3050
F 0 "U1" H 6025 3665 50  0000 C CNN
F 1 "FullBridgeCell" H 6025 3574 50  0000 C CNN
F 2 "user_dc:Buffer Full Bridge" H 6075 3050 50  0001 C CNN
F 3 "" H 6075 3050 50  0001 C CNN
	1    6025 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5D2E2534
P 4550 3050
F 0 "J2" H 4470 2625 50  0000 C CNN
F 1 "Conn_01x04" H 4470 2716 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4550 3050 50  0001 C CNN
F 3 "~" H 4550 3050 50  0001 C CNN
	1    4550 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5325 2850 4750 2850
Wire Wire Line
	4750 2950 5325 2950
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5D2E25FF
P 2750 3000
F 0 "J3" H 2670 2675 50  0000 C CNN
F 1 "Conn_01x02" H 2670 2766 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2750 3000 50  0001 C CNN
F 3 "~" H 2750 3000 50  0001 C CNN
	1    2750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 3250 5325 3350
Connection ~ 5325 3350
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5D2E281B
P 9400 3450
F 0 "J4" H 9480 3442 50  0000 L CNN
F 1 "Conn_01x02" H 9175 3675 50  0000 L CNN
F 2 "calisco-MTA:MTA156_2pin" H 9400 3450 50  0001 C CNN
F 3 "~" H 9400 3450 50  0001 C CNN
	1    9400 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5D2E2887
P 9800 2750
F 0 "J1" H 9880 2742 50  0000 L CNN
F 1 "Conn_01x02" H 9880 2651 50  0000 L CNN
F 2 "calisco-MTA:MTA156_2pin" H 9800 2750 50  0001 C CNN
F 3 "~" H 9800 2750 50  0001 C CNN
	1    9800 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5D2E42C6
P 7475 2800
F 0 "L1" V 7550 2725 50  0000 C CNN
F 1 "L" V 7550 2875 50  0000 C CNN
F 2 "user_dc:XAL7070" H 7475 2800 50  0001 C CNN
F 3 "~" H 7475 2800 50  0001 C CNN
	1    7475 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L2
U 1 1 5D2E4361
P 7475 2900
F 0 "L2" V 7575 3000 50  0000 C CNN
F 1 "L" V 7575 2850 50  0000 C CNN
F 2 "user_dc:XAL7070" H 7475 2900 50  0001 C CNN
F 3 "~" H 7475 2900 50  0001 C CNN
	1    7475 2900
	0    1    1    0   
$EndComp
$Comp
L 0pg-passives:C C6
U 1 1 5D2E4B62
P 7875 2825
F 0 "C6" H 7941 2863 40  0000 L CNN
F 1 "C" H 7941 2787 40  0000 L CNN
F 2 "user_dc:C_2220_Sm" V 7875 2825 40  0001 C CNN
F 3 "" V 7875 2825 40  0001 C CNN
	1    7875 2825
	1    0    0    -1  
$EndComp
$Comp
L 0pg-passives:C C7
U 1 1 5D2E4BBE
P 8050 2825
F 0 "C7" H 8116 2863 40  0000 L CNN
F 1 "C" H 8116 2787 40  0000 L CNN
F 2 "user_dc:C_2220_Sm" V 8050 2825 40  0001 C CNN
F 3 "" V 8050 2825 40  0001 C CNN
	1    8050 2825
	1    0    0    -1  
$EndComp
$Comp
L 0pg-passives:C C8
U 1 1 5D2E4C16
P 8225 2825
F 0 "C8" H 8291 2863 40  0000 L CNN
F 1 "C" H 8291 2787 40  0000 L CNN
F 2 "user_dc:C_2220_Sm" V 8225 2825 40  0001 C CNN
F 3 "" V 8225 2825 40  0001 C CNN
	1    8225 2825
	1    0    0    -1  
$EndComp
$Comp
L 0pg-passives:C C9
U 1 1 5D2E4C4A
P 8400 2825
F 0 "C9" H 8466 2863 40  0000 L CNN
F 1 "C" H 8466 2787 40  0000 L CNN
F 2 "user_dc:C_2220_Sm" V 8400 2825 40  0001 C CNN
F 3 "" V 8400 2825 40  0001 C CNN
	1    8400 2825
	1    0    0    -1  
$EndComp
$Comp
L 0pg-passives:C C10
U 1 1 5D2E4C7A
P 8600 2825
F 0 "C10" H 8666 2863 40  0000 L CNN
F 1 "C" H 8666 2787 40  0000 L CNN
F 2 "user_dc:C_2220_Sm" V 8600 2825 40  0001 C CNN
F 3 "" V 8600 2825 40  0001 C CNN
	1    8600 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	6725 3100 6725 3200
Connection ~ 7875 2675
Wire Wire Line
	7875 2675 8050 2675
Connection ~ 8050 2675
Wire Wire Line
	8050 2675 8225 2675
Connection ~ 8225 2675
Wire Wire Line
	8225 2675 8400 2675
Connection ~ 8400 2675
Wire Wire Line
	8400 2675 8600 2675
Wire Wire Line
	8800 2675 8600 2675
Wire Wire Line
	8800 2675 8800 2775
Connection ~ 8600 2675
Wire Wire Line
	8800 2975 8600 2975
Wire Wire Line
	8800 2875 8800 2975
Wire Wire Line
	6725 3300 6725 3400
Connection ~ 7875 2975
Wire Wire Line
	7875 2975 7725 2975
Connection ~ 8050 2975
Wire Wire Line
	8050 2975 7875 2975
Connection ~ 8225 2975
Wire Wire Line
	8225 2975 8050 2975
Connection ~ 8400 2975
Wire Wire Line
	8400 2975 8225 2975
Connection ~ 8600 2975
Wire Wire Line
	8600 2975 8400 2975
$Comp
L 0pg-passives:C C1
U 1 1 5D2E6646
P 7625 3500
F 0 "C1" H 7691 3538 40  0000 L CNN
F 1 "C" H 7691 3462 40  0000 L CNN
F 2 "user_dc:C_2220_Sm" V 7625 3500 40  0001 C CNN
F 3 "" V 7625 3500 40  0001 C CNN
	1    7625 3500
	1    0    0    -1  
$EndComp
$Comp
L 0pg-passives:C C2
U 1 1 5D2E669E
P 7825 3500
F 0 "C2" H 7891 3538 40  0000 L CNN
F 1 "C" H 7891 3462 40  0000 L CNN
F 2 "user_dc:C_2220_Sm" V 7825 3500 40  0001 C CNN
F 3 "" V 7825 3500 40  0001 C CNN
	1    7825 3500
	1    0    0    -1  
$EndComp
$Comp
L 0pg-passives:C C3
U 1 1 5D2E66EC
P 8025 3500
F 0 "C3" H 8091 3538 40  0000 L CNN
F 1 "C" H 8091 3462 40  0000 L CNN
F 2 "user_dc:C_2220_Sm" V 8025 3500 40  0001 C CNN
F 3 "" V 8025 3500 40  0001 C CNN
	1    8025 3500
	1    0    0    -1  
$EndComp
$Comp
L 0pg-passives:C C4
U 1 1 5D2E6724
P 8225 3500
F 0 "C4" H 8291 3538 40  0000 L CNN
F 1 "C" H 8291 3462 40  0000 L CNN
F 2 "user_dc:C_2220_Sm" V 8225 3500 40  0001 C CNN
F 3 "" V 8225 3500 40  0001 C CNN
	1    8225 3500
	1    0    0    -1  
$EndComp
$Comp
L 0pg-passives:C C5
U 1 1 5D2E675E
P 8425 3500
F 0 "C5" H 8491 3538 40  0000 L CNN
F 1 "C" H 8491 3462 40  0000 L CNN
F 2 "user_dc:C_2220_Sm" V 8425 3500 40  0001 C CNN
F 3 "" V 8425 3500 40  0001 C CNN
	1    8425 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7625 3350 7825 3350
Connection ~ 7825 3350
Wire Wire Line
	7825 3350 8025 3350
Connection ~ 8025 3350
Wire Wire Line
	8025 3350 8225 3350
Connection ~ 8225 3350
Wire Wire Line
	8225 3350 8425 3350
Wire Wire Line
	8425 3650 8225 3650
Connection ~ 7825 3650
Connection ~ 8025 3650
Wire Wire Line
	8025 3650 7825 3650
Connection ~ 8225 3650
Wire Wire Line
	8225 3650 8025 3650
Connection ~ 7625 3650
Connection ~ 7625 3350
Text Label 3225 2750 0    50   ~ 0
VDD_Logic
Text Label 3500 3350 0    50   ~ 0
GND_Logic
Text Label 6900 2800 0    50   ~ 0
LC1_Pos
Text Label 6900 2900 0    50   ~ 0
CF_Neg
Text Label 6825 3100 0    50   ~ 0
VC2_Pos
Text Label 6775 3400 0    50   ~ 0
VC2_Neg
Text Label 5100 2850 0    50   ~ 0
INA
Text Label 5075 2950 0    50   ~ 0
~INA
Text Label 5100 3050 0    50   ~ 0
INB
Text Label 5100 3150 0    50   ~ 0
~INB
Wire Wire Line
	9100 2700 9100 2775
Wire Wire Line
	9150 3025 9150 2875
Wire Wire Line
	5250 3150 5250 3050
Wire Wire Line
	5250 3050 5325 3050
Wire Wire Line
	4750 3150 5250 3150
Wire Wire Line
	5100 3050 4750 3050
Wire Wire Line
	5100 3050 5100 3100
Wire Wire Line
	5100 3100 5325 3100
Wire Wire Line
	5325 3100 5325 3150
$Comp
L user_zliao:FullBridgeCell U1
U 2 1 5D2FEFE8
P 6075 4400
F 0 "U1" H 6602 4446 50  0000 L CNN
F 1 "FullBridgeCell" H 6602 4355 50  0000 L CNN
F 2 "user_dc:Buffer Full Bridge" H 6125 4400 50  0001 C CNN
F 3 "" H 6125 4400 50  0001 C CNN
	2    6075 4400
	1    0    0    -1  
$EndComp
Connection ~ 5375 4300
Wire Wire Line
	5375 4300 5400 4300
Text Label 4800 4300 0    50   ~ 0
VDD_ISO
Text Label 4775 4500 0    50   ~ 0
GND_ISO
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5D301128
P 4225 4450
F 0 "J5" H 4305 4442 50  0000 L CNN
F 1 "Conn_01x02" H 4000 4675 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4225 4450 50  0001 C CNN
F 3 "~" H 4225 4450 50  0001 C CNN
	1    4225 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4425 4300 5375 4300
Wire Wire Line
	4425 4500 5375 4500
Wire Wire Line
	4425 4500 4425 4450
Wire Wire Line
	4425 4350 4425 4300
Wire Wire Line
	7725 2900 7725 2975
Wire Wire Line
	7725 2800 7725 2675
Wire Wire Line
	7725 2675 7875 2675
Wire Wire Line
	9600 2750 9600 2700
Wire Wire Line
	9600 2700 9225 2700
Wire Wire Line
	9150 2875 9600 2875
Wire Wire Line
	9600 2875 9600 2850
Connection ~ 9150 2875
Wire Wire Line
	9225 2600 9225 2700
Connection ~ 9225 2700
Wire Wire Line
	9225 2700 9100 2700
Text Label 9150 3025 0    50   ~ 0
VAC_Neg
Text Label 9225 2600 0    50   ~ 0
VAC_Pos
Wire Wire Line
	7625 3100 7625 3350
Wire Wire Line
	7350 3650 7625 3650
Wire Wire Line
	6725 3100 7625 3100
Wire Wire Line
	6725 3400 7350 3400
Wire Wire Line
	7350 3400 7350 3650
Wire Wire Line
	7625 3650 7825 3650
Wire Wire Line
	9200 3450 9200 3350
Wire Wire Line
	9200 3350 8425 3350
Connection ~ 8425 3350
Wire Wire Line
	9200 3550 9200 3650
Wire Wire Line
	9200 3650 8425 3650
Connection ~ 8425 3650
Wire Wire Line
	2550 3000 2550 2750
Wire Wire Line
	2550 3100 2550 3350
Wire Wire Line
	2550 3350 5325 3350
Wire Wire Line
	2550 2750 5325 2750
Wire Wire Line
	6725 2900 7325 2900
Connection ~ 7325 2900
Wire Wire Line
	7325 2900 7350 2900
Wire Wire Line
	7625 2900 7725 2900
Wire Wire Line
	6725 2800 7325 2800
Wire Wire Line
	7625 2800 7725 2800
Wire Wire Line
	8800 2775 9100 2775
Wire Wire Line
	8800 2875 9150 2875
$EndSCHEMATC
