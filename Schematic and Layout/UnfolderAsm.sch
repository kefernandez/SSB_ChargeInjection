EESchema Schematic File Version 4
LIBS:UnfolderBuffer-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4800 1425 1300 1375
U 5CE3A925
F0 "UnfolderBridgeP" 60
F1 "UnfolderBridge.sch" 60
F2 "GND" B R 6100 2650 60 
F3 "VSW" B R 6100 1850 60 
F4 "EN" B L 4800 1850 60 
F5 "DGND" B R 6100 2750 60 
F6 "VDD" B R 6100 1550 60 
F7 "PWM" B L 4800 2150 60 
F8 "V_BST_Br" B L 4800 2450 60 
$EndSheet
Text Notes 5050 1250 0    100  ~ 0
Unfolder
$Sheet
S 4800 3575 1300 1375
U 5CE41F2E
F0 "UnfolderBridgeN" 60
F1 "UnfolderBridge.sch" 60
F2 "GND" B R 6100 4800 60 
F3 "VSW" B R 6100 4000 60 
F4 "EN" B L 4800 4000 60 
F5 "DGND" B R 6100 4900 60 
F6 "VDD" B R 6100 3700 60 
F7 "PWM" B L 4800 4300 60 
F8 "V_BST_Br" B L 4800 4600 60 
$EndSheet
Text Label 4350 4000 2    60   ~ 0
REC_EN_Unf
Wire Wire Line
	4800 4000 4350 4000
Text Label 4350 4600 2    60   ~ 0
V_BST_Unf
Wire Wire Line
	4350 4600 4800 4600
Text Label 4350 2450 2    60   ~ 0
V_BST_Unf
$Comp
L user_tm:TP TP?
U 1 1 5CE6A1BA
P 7225 1850
AR Path="/5CE6A1BA" Ref="TP?"  Part="1" 
AR Path="/5977AB70/5CE6A1BA" Ref="TP?"  Part="1" 
AR Path="/5CE3A7D0/5CE3A925/5CE6A1BA" Ref="TP?"  Part="1" 
AR Path="/5CE3A7D0/5CE6A1BA" Ref="TP13"  Part="1" 
F 0 "TP13" H 7300 1850 40  0000 C CNN
F 1 "TP" H 7234 1898 40  0001 C CNN
F 2 "user_dc:MountingHole_3.2mm_M3_Pad_Via" H 7225 1850 60  0001 C CNN
F 3 "" H 7225 1850 60  0000 C CNN
	1    7225 1850
	1    0    0    1   
$EndComp
$Comp
L user_tm:TP TP?
U 1 1 5CE6A85A
P 7225 2275
AR Path="/5CE6A85A" Ref="TP?"  Part="1" 
AR Path="/5977AB70/5CE6A85A" Ref="TP?"  Part="1" 
AR Path="/5CE3A7D0/5CE3A925/5CE6A85A" Ref="TP?"  Part="1" 
AR Path="/5CE3A7D0/5CE6A85A" Ref="TP14"  Part="1" 
F 0 "TP14" H 7300 2275 40  0000 C CNN
F 1 "TP" H 7234 2323 40  0001 C CNN
F 2 "user_dc:MountingHole_3.2mm_M3_Pad_Via" H 7225 2275 60  0001 C CNN
F 3 "" H 7225 2275 60  0000 C CNN
	1    7225 2275
	1    0    0    1   
$EndComp
Wire Wire Line
	7175 2275 7075 2275
Wire Wire Line
	7175 1850 7075 1850
Text Label 4350 2150 2    60   ~ 0
AC_POS_PWM_Unf
Text Label 4350 4300 2    60   ~ 0
AC_NEG_PWM_Unf
Text Notes 7425 2275 0    100  ~ 0
AC_NEG
Text Notes 7425 1850 0    100  ~ 0
AC_POS
Wire Wire Line
	6100 1550 6700 1550
Wire Wire Line
	6100 3700 6700 3700
Text HLabel 6700 1550 2    60   Input ~ 0
VDD
Text HLabel 2750 2450 0    60   Input ~ 0
V_BST_Unfolder
Text HLabel 2750 1850 0    60   Input ~ 0
REC_EN
Text HLabel 2750 2150 0    60   Input ~ 0
AC_POS_PWM
Text HLabel 2800 4300 0    60   Input ~ 0
AC_NEG_PWM
Text Label 4350 1850 2    60   ~ 0
REC_EN_Unf
Wire Wire Line
	2750 1850 4800 1850
Wire Wire Line
	2750 2150 4800 2150
Wire Wire Line
	2800 4300 4800 4300
Wire Wire Line
	2750 2450 4800 2450
Text HLabel 2750 3050 0    60   Input ~ 0
PGND
Wire Wire Line
	2750 3050 2900 3050
Text Label 2900 3050 0    60   ~ 0
PGND_Unf
Text Label 7950 2650 0    60   ~ 0
PGND_Unf
Text Label 6150 1550 0    60   ~ 0
VREC_FCML
Text Label 6700 3700 0    60   ~ 0
VREC_FCML
Text Label 6675 1850 0    60   ~ 0
VAC_POS
Text Label 6675 2275 0    60   ~ 0
VAC_NEG
Text HLabel 7225 2050 2    60   Output ~ 0
VAC+
Wire Wire Line
	7225 2050 7075 2050
Wire Wire Line
	7075 2050 7075 1850
Connection ~ 7075 1850
Wire Wire Line
	7075 1850 6675 1850
Text HLabel 7225 2475 2    60   Output ~ 0
VAC-
Wire Wire Line
	7225 2475 7075 2475
Wire Wire Line
	7075 2475 7075 2275
Connection ~ 7075 2275
Wire Wire Line
	7075 2275 6675 2275
Wire Wire Line
	7600 2650 7600 4800
Connection ~ 7600 2650
Wire Wire Line
	7600 2650 7950 2650
Wire Wire Line
	6100 2750 6250 2750
Wire Wire Line
	6100 4900 6250 4900
Wire Wire Line
	6400 1850 6100 1850
Wire Wire Line
	6400 4000 6100 4000
Text Label 6125 1850 0    50   ~ 0
VAC_JP
Text Label 6150 4000 0    50   ~ 0
VAC_JN
Wire Wire Line
	6100 4800 7600 4800
Wire Wire Line
	6100 2650 7600 2650
Text HLabel 2750 3200 0    60   Input ~ 0
DGND
Text Label 6250 2750 0    60   ~ 0
DGND_Unf
Text Label 6250 4900 0    60   ~ 0
DGND_Unf
Text Label 2900 3200 0    60   ~ 0
DGND_Unf
Wire Wire Line
	2900 3200 2750 3200
Text HLabel 6400 2000 3    60   Output ~ 0
VAC+_S
Wire Wire Line
	6400 2000 6400 1850
Text HLabel 6400 4150 3    60   Output ~ 0
VAC-_S
Wire Wire Line
	6400 4000 6400 4150
$EndSCHEMATC
