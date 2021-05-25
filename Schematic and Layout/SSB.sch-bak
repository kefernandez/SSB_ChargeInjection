EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 8
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
L user_zliao:FullBridgeCell U9
U 1 1 5C7A0834
P 5700 2450
F 0 "U9" H 5700 2950 50  0000 C CNN
F 1 "FullBridgeCell" H 5700 1925 50  0000 C CNN
F 2 "user_dc:Buffer Full Bridge" H 5750 2450 50  0001 C CNN
F 3 "" H 5750 2450 50  0001 C CNN
	1    5700 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L7
U 1 1 5C7A0852
P 6900 2200
F 0 "L7" V 7085 2200 50  0000 C CNN
F 1 "47uH" V 6994 2200 50  0000 C CNN
F 2 "user_dc:XAL7070" H 6900 2200 50  0001 C CNN
F 3 "~" H 6900 2200 50  0001 C CNN
	1    6900 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:L_Small L8
U 1 1 5C7A0859
P 6900 2300
F 0 "L8" V 6750 2300 50  0000 C CNN
F 1 "47uH" V 6825 2300 50  0000 C CNN
F 2 "user_dc:XAL7070" H 6900 2300 50  0001 C CNN
F 3 "~" H 6900 2300 50  0001 C CNN
	1    6900 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 2200 6800 2200
Wire Wire Line
	6400 2300 6800 2300
Text HLabel 1775 4675 0    50   Input ~ 0
VDD_Logic
Text HLabel 3350 2250 0    50   Input ~ 0
~INA
Text HLabel 3350 2750 0    50   Input ~ 0
GND_Logic
Text HLabel 8000 2200 2    50   BiDi ~ 0
C1-
Wire Wire Line
	5000 2250 3350 2250
Wire Wire Line
	5000 2450 3350 2450
Text Label 3950 2150 0    60   ~ 0
VDD_Logic_FB
Text Label 3950 2250 0    60   ~ 0
INA_FB
Text Label 3950 2450 0    60   ~ 0
INB_FB
Text Label 3950 2750 0    60   ~ 0
GND_Logic_FB
Text HLabel 8000 2300 2    50   BiDi ~ 0
GND_Pwr
Text HLabel 7350 2600 2    50   BiDi ~ 0
C2_Top
Text HLabel 7350 2700 2    50   BiDi ~ 0
C2_Bottom
Wire Wire Line
	7350 2600 6400 2600
Wire Wire Line
	7350 2700 6400 2700
Wire Wire Line
	7000 2300 8000 2300
Text Notes 4850 1300 0    100  ~ 0
Series-Stacked Buffer\nFull-Bridge Switching Cell\nModular Layout Page
Text Label 6450 2200 0    35   ~ 0
LC1_FB
Text Label 6450 2300 0    35   ~ 0
GND_L_FB
Text Label 6450 2600 0    60   ~ 0
C2_Top_FB
Text Label 6450 2700 0    60   ~ 0
C2_Bottom_FB
Text Label 7600 2200 0    35   ~ 0
C1-_FB
Text Label 7250 2300 0    35   ~ 0
GND_Pwr_FB
$Sheet
S 5250 4350 900  400 
U 5CA4E7D8
F0 "ISODCDC" 60
F1 "ADuMISO.sch" 60
F2 "VDDIN" I L 5250 4450 60 
F3 "GNDIN" I L 5250 4650 60 
F4 "GNDOUT" O R 6150 4650 60 
F5 "VDDOUT" O R 6150 4450 60 
$EndSheet
Text Label 5100 4650 2    60   ~ 0
GND_Logic_FB
Text Label 6300 4650 0    60   ~ 0
C2_Bottom_FB
Text Label 6300 4450 0    60   ~ 0
VDDISO1
$Comp
L user_zliao:FullBridgeCell U9
U 2 1 5CA9DD4C
P 7650 4550
F 0 "U9" H 8178 4596 50  0000 L CNN
F 1 "FullBridgeCell" H 8178 4505 50  0000 L CNN
F 2 "user_dc:Buffer Full Bridge" H 7700 4550 50  0001 C CNN
F 3 "" H 7700 4550 50  0001 C CNN
	2    7650 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4450 6950 4450
Wire Wire Line
	6150 4650 6950 4650
$Comp
L Regulator_Linear:LM2937xMP U10
U 1 1 5CAB0F92
P 2650 4675
F 0 "U10" H 2650 4917 50  0000 C CNN
F 1 "LM2937xMP" H 2650 4826 50  0000 C CNN
F 2 "calisco-general:SOT223-4" H 2650 4900 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2937.pdf" H 2650 4625 50  0001 C CNN
	1    2650 4675
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2150 5000 2150
Wire Wire Line
	1775 4675 1825 4675
Text Label 3100 4675 0    60   ~ 0
VDD_Logic_FB
Text Label 1775 5075 2    60   ~ 0
GND_Logic_FB
Wire Wire Line
	1775 5075 1825 5075
Wire Wire Line
	2650 5075 2650 4975
$Comp
L Device:C_Small C29
U 1 1 5CAB50D8
P 1825 4875
F 0 "C29" H 1917 4921 50  0000 L CNN
F 1 "10uF" H 1917 4830 50  0000 L CNN
F 2 "calisco-general:C_1206" H 1825 4875 50  0001 C CNN
F 3 "~" H 1825 4875 50  0001 C CNN
	1    1825 4875
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C31
U 1 1 5CAB57C8
P 3050 4875
F 0 "C31" H 3142 4921 50  0000 L CNN
F 1 "10uF" H 3142 4830 50  0000 L CNN
F 2 "calisco-general:C_1206" H 3050 4875 50  0001 C CNN
F 3 "~" H 3050 4875 50  0001 C CNN
	1    3050 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1825 4775 1825 4675
Connection ~ 1825 4675
Wire Wire Line
	1825 4975 1825 5075
Connection ~ 1825 5075
Wire Wire Line
	2650 5075 3050 5075
Wire Wire Line
	3050 5075 3050 4975
Wire Wire Line
	3050 4775 3050 4675
Connection ~ 3050 4675
Wire Wire Line
	3050 4675 2950 4675
Text HLabel 3350 2450 0    50   Input ~ 0
~INB
Wire Wire Line
	3050 4675 3675 4675
Wire Wire Line
	5000 2750 3350 2750
Text Label 3350 2650 2    60   ~ 0
VDD_Logic_FB
Wire Wire Line
	5250 4650 5100 4650
Wire Wire Line
	5100 4450 5250 4450
Text Label 5100 4450 2    60   ~ 0
VDD_Logic_FB
Wire Wire Line
	1825 4675 2225 4675
Wire Wire Line
	1825 5075 2225 5075
Connection ~ 2650 5075
$Comp
L Device:C_Small C30
U 1 1 5FFD25AD
P 2225 4875
F 0 "C30" H 2317 4921 50  0000 L CNN
F 1 "0.1uF" H 2317 4830 50  0000 L CNN
F 2 "calisco-general:C_1206" H 2225 4875 50  0001 C CNN
F 3 "~" H 2225 4875 50  0001 C CNN
	1    2225 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 4775 2225 4675
Connection ~ 2225 4675
Wire Wire Line
	2225 4675 2350 4675
Wire Wire Line
	2225 4975 2225 5075
Connection ~ 2225 5075
Wire Wire Line
	2225 5075 2650 5075
NoConn ~ 5000 2350
NoConn ~ 5000 2550
Wire Wire Line
	3350 2650 5000 2650
$Comp
L Device:L_Small L17
U 1 1 6038DD8F
P 7200 2200
F 0 "L17" V 7385 2200 50  0000 C CNN
F 1 "47uH" V 7294 2200 50  0000 C CNN
F 2 "user_dc:XAL7070" H 7200 2200 50  0001 C CNN
F 3 "~" H 7200 2200 50  0001 C CNN
	1    7200 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 2200 7100 2200
Wire Wire Line
	7300 2200 8000 2200
$EndSCHEMATC
