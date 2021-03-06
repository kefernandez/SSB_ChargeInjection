EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
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
L Device:R_Small R?
U 1 1 5C7E8BD9
P 6200 2400
AR Path="/5C84DB13/5C7E8BD9" Ref="R?"  Part="1" 
AR Path="/5C897EFB/5C7E8BD9" Ref="R1"  Part="1" 
F 0 "R1" H 6230 2420 50  0000 L CNN
F 1 "470k" H 6230 2360 50  0000 L CNN
F 2 "calisco-general:R_1206" H 6200 2400 50  0001 C CNN
F 3 "" H 6200 2400 50  0000 C CNN
	1    6200 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C7E8BDA
P 6200 2650
AR Path="/5C84DB13/5C7E8BDA" Ref="R?"  Part="1" 
AR Path="/5C897EFB/5C7E8BDA" Ref="R2"  Part="1" 
F 0 "R2" H 6230 2670 50  0000 L CNN
F 1 "470k" H 6230 2610 50  0000 L CNN
F 2 "calisco-general:R_1206" H 6200 2650 50  0001 C CNN
F 3 "" H 6200 2650 50  0000 C CNN
	1    6200 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5C7E8BDB
P 6200 2900
AR Path="/5C84DB13/5C7E8BDB" Ref="R?"  Part="1" 
AR Path="/5C897EFB/5C7E8BDB" Ref="R3"  Part="1" 
F 0 "R3" H 6230 2920 50  0000 L CNN
F 1 "470k" H 6230 2860 50  0000 L CNN
F 2 "calisco-general:R_1206" H 6200 2900 50  0001 C CNN
F 3 "" H 6200 2900 50  0000 C CNN
	1    6200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5CF46861
P 6200 3200
AR Path="/5C84DB13/5CF46861" Ref="R?"  Part="1" 
AR Path="/5C897EFB/5CF46861" Ref="R4"  Part="1" 
F 0 "R4" H 6230 3220 50  0000 L CNN
F 1 "10k" H 6230 3160 50  0000 L CNN
F 2 "calisco-general:R_0603" H 6200 3200 50  0001 C CNN
F 3 "" H 6200 3200 50  0000 C CNN
	1    6200 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5C7E8BDD
P 6400 3200
AR Path="/5C84DB13/5C7E8BDD" Ref="C?"  Part="1" 
AR Path="/5C897EFB/5C7E8BDD" Ref="C7"  Part="1" 
F 0 "C7" H 6410 3270 50  0000 L CNN
F 1 "1000pF" H 6410 3120 50  0000 L CNN
F 2 "calisco-general:C_0603" H 6400 3200 50  0001 C CNN
F 3 "" H 6400 3200 50  0000 C CNN
	1    6400 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2500 6200 2550
Wire Wire Line
	6200 2750 6200 2800
Wire Wire Line
	6200 3000 6200 3050
Wire Wire Line
	6400 3100 6400 3050
Wire Wire Line
	6400 3050 6200 3050
Connection ~ 6200 3050
Wire Wire Line
	6200 3300 6200 3600
Wire Wire Line
	6200 3600 6400 3600
Wire Wire Line
	6400 3600 6400 3300
Connection ~ 6200 3600
Wire Wire Line
	6200 3050 6200 3100
Text HLabel 6100 2150 0    60   Input ~ 0
HVI
Wire Wire Line
	6100 2150 6200 2150
Wire Wire Line
	6200 2150 6200 2300
Text HLabel 4350 3150 0    60   Output ~ 0
VOut1
Text Label 4600 3600 0    60   ~ 0
GND_SHVSense
Text Label 2850 3750 0    60   ~ 0
GND_HVSenseL
Text Label 2850 2800 0    60   ~ 0
VDD_Logic_HVSense
Text Label 5950 3050 0    60   ~ 0
HV1_DIV
Text Label 5050 3450 0    50   ~ 0
SHV_FB
Text Label 4350 3150 0    50   ~ 0
SHV1_Out
Text HLabel 2650 2800 0    60   Input ~ 0
VDDL
Wire Wire Line
	2650 2800 2850 2800
Text HLabel 2650 3750 0    60   Input ~ 0
GNDL
Wire Wire Line
	2650 3750 2850 3750
Text HLabel 4350 3600 0    60   Input ~ 0
GNDHV
$Comp
L Device:C_Small C?
U 1 1 5C7E8BD8
P 2850 3250
AR Path="/5C84DB13/5C7E8BD8" Ref="C?"  Part="1" 
AR Path="/5C897EFB/5C7E8BD8" Ref="C8"  Part="1" 
F 0 "C8" H 2860 3320 50  0000 L CNN
F 1 "1uF" H 2860 3170 50  0000 L CNN
F 2 "calisco-general:C_0603" H 2850 3250 50  0001 C CNN
F 3 "" H 2850 3250 50  0000 C CNN
	1    2850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3150 2850 2800
Connection ~ 2850 2800
Wire Wire Line
	2850 3350 2850 3750
Connection ~ 2850 3750
Wire Wire Line
	5900 3050 6200 3050
Wire Wire Line
	5050 3150 5050 3450
Wire Wire Line
	5050 3450 5950 3450
Wire Wire Line
	5950 3450 5950 3250
Wire Wire Line
	5950 3250 5900 3250
Connection ~ 5050 3150
Wire Wire Line
	5050 3150 5100 3150
$Comp
L calisco_discretes:LTC2050_+ U?
U 1 1 5C84FCDD
P 5550 3150
AR Path="/5C84DB13/5C84FCDD" Ref="U?"  Part="1" 
AR Path="/5C897EFB/5C84FCDD" Ref="U2"  Part="1" 
F 0 "U2" H 5600 3700 60  0000 C CNN
F 1 "LTC2050_+" H 5600 3594 60  0000 C CNN
F 2 "calisco-general:SOT-23-5" H 5550 3150 60  0001 C CNN
F 3 "" H 5550 3150 60  0000 C CNN
	1    5550 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 2800 5550 2800
Wire Wire Line
	5550 3750 5550 3500
Wire Wire Line
	2850 3750 5550 3750
Wire Wire Line
	4350 3600 6200 3600
Wire Wire Line
	4350 3150 5050 3150
$Comp
L Connector:TestPoint TP?
U 1 1 60361827
P 6400 3050
AR Path="/5FFD522A/60361827" Ref="TP?"  Part="1" 
AR Path="/5C897EFB/60361827" Ref="TP10"  Part="1" 
F 0 "TP10" H 6458 3170 50  0000 L CNN
F 1 "TestPoint" H 6458 3079 50  0000 L CNN
F 2 "user_kf:0603 TP" H 6600 3050 50  0001 C CNN
F 3 "~" H 6600 3050 50  0001 C CNN
	1    6400 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP17
U 1 1 60363DFC
P 6200 2150
F 0 "TP17" H 6258 2270 50  0000 L CNN
F 1 "TestPoint" H 6258 2179 50  0000 L CNN
F 2 "user_kf:0603 TP" H 6400 2150 50  0001 C CNN
F 3 "~" H 6400 2150 50  0001 C CNN
	1    6200 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 602FE624
P 6200 3600
AR Path="/5FFD522A/602FE624" Ref="TP?"  Part="1" 
AR Path="/5C897EFB/602FE624" Ref="TP18"  Part="1" 
F 0 "TP18" H 6258 3720 50  0000 L CNN
F 1 "TestPoint" H 6258 3629 50  0000 L CNN
F 2 "user_kf:0603 TP" H 6400 3600 50  0001 C CNN
F 3 "~" H 6400 3600 50  0001 C CNN
	1    6200 3600
	-1   0    0    1   
$EndComp
$EndSCHEMATC
