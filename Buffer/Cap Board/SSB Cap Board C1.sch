EESchema Schematic File Version 4
LIBS:SSB Cap Board C1-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L Connector:TestPoint TP1
U 1 1 5CACE404
P 2675 2075
F 0 "TP1" H 2733 2195 50  0000 L CNN
F 1 "TestPoint" H 2733 2104 50  0000 L CNN
F 2 "user_dc:MountingHole_3.2mm_M3_Pad_Via" H 2875 2075 50  0001 C CNN
F 3 "~" H 2875 2075 50  0001 C CNN
	1    2675 2075
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5CACE48A
P 3250 3450
F 0 "TP2" H 3192 3477 50  0000 R CNN
F 1 "TestPoint" H 3192 3568 50  0000 R CNN
F 2 "user_dc:MountingHole_3.2mm_M3_Pad_Via" H 3450 3450 50  0001 C CNN
F 3 "~" H 3450 3450 50  0001 C CNN
	1    3250 3450
	-1   0    0    1   
$EndComp
$Sheet
S 2800 2350 625  725 
U 5CACEBF5
F0 "C1 0 - 200" 50
F1 "C1.sch" 50
F2 "C1+" I L 2800 2575 50 
F3 "C1-" I L 2800 2850 50 
$EndSheet
Text Label 2350 2575 0    50   ~ 0
C1+
Text Label 2400 2850 0    50   ~ 0
C1-
Wire Wire Line
	2525 2850 2525 3450
Wire Wire Line
	2525 3450 3250 3450
Wire Wire Line
	2525 2850 2175 2850
Wire Wire Line
	3925 2875 3925 3450
Wire Wire Line
	2550 2575 2550 2075
Wire Wire Line
	2550 2075 2675 2075
Connection ~ 2550 2575
Wire Wire Line
	2550 2575 2150 2575
Wire Wire Line
	3950 2600 3950 2075
$Sheet
S 4300 2375 625  725 
U 5D65F129
F0 "sheet5D65F125" 50
F1 "C1.sch" 50
F2 "C1+" I L 4300 2600 50 
F3 "C1-" I L 4300 2875 50 
$EndSheet
Wire Wire Line
	3925 2875 4100 2875
Connection ~ 2675 2075
Wire Wire Line
	2675 2075 3950 2075
Connection ~ 3250 3450
Wire Wire Line
	3250 3450 3925 3450
Wire Wire Line
	4100 2850 4100 2875
Connection ~ 4100 2875
Wire Wire Line
	4100 2875 4300 2875
Wire Wire Line
	3950 2600 4300 2600
Wire Wire Line
	2550 2575 2800 2575
Connection ~ 2525 2850
Wire Wire Line
	2525 2850 2800 2850
$EndSCHEMATC
