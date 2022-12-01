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
L 0pg-discretes:NFET_EPC2 Q1
U 1 1 5C76F2EE
P 4900 1925
F 0 "Q1" H 4850 1725 50  0000 L CNN
F 1 "NFET_EPC2" H 4750 1625 50  0001 L CNN
F 2 "user_dc:EPC_EPC203x_BGA-24" H 5150 1825 50  0001 L CIN
F 3 "http://epc-co.com/epc/Portals/0/epc/documents/datasheets/EPC2033_datasheet.pdf" H 4900 1925 50  0001 L CNN
	1    4900 1925
	1    0    0    -1  
$EndComp
$Comp
L 0pg-discretes:NFET_EPC2 Q2
U 1 1 5C772336
P 4900 3000
F 0 "Q2" H 4825 2800 50  0000 L CNN
F 1 "NFET_EPC2" H 4550 2700 50  0001 L CNN
F 2 "user_dc:EPC_EPC203x_BGA-24" H 5150 2900 50  0001 L CIN
F 3 "http://epc-co.com/epc/Portals/0/epc/documents/datasheets/EPC2033_datasheet.pdf" H 4900 3000 50  0001 L CNN
	1    4900 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C1
U 1 1 5C773AD2
P 1100 2575
F 0 "C1" H 1000 2600 50  0000 R CNN
F 1 "1uF" H 1300 2525 50  0001 R CNN
F 2 "calisco-general:C_0402" H 1100 2575 50  0001 C CNN
F 3 "~" H 1100 2575 50  0001 C CNN
	1    1100 2575
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5C782F1F
P 4525 1925
F 0 "R7" V 4450 1900 50  0000 C CNN
F 1 "22" V 4420 1925 50  0001 C CNN
F 2 "calisco-general:R_0402" H 4525 1925 50  0001 C CNN
F 3 "~" H 4525 1925 50  0001 C CNN
	1    4525 1925
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 5C7842B2
P 4475 2075
F 0 "D3" H 4475 2150 50  0000 C CNN
F 1 "D_Schottky" H 4475 2200 50  0001 C CNN
F 2 "calisco-general:D_0402" H 4475 2075 50  0001 C CNN
F 3 "~" H 4475 2075 50  0001 C CNN
	1    4475 2075
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5C786BC6
P 4500 3000
F 0 "R6" V 4425 3025 50  0000 C CNN
F 1 "22" V 4450 2850 50  0001 C CNN
F 2 "calisco-general:R_0402" H 4500 3000 50  0001 C CNN
F 3 "~" H 4500 3000 50  0001 C CNN
	1    4500 3000
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 5C786C26
P 4450 3100
F 0 "D2" H 4600 3000 50  0000 C CNN
F 1 "D_Schottky" H 4450 3225 50  0001 C CNN
F 2 "calisco-general:D_0402" H 4450 3100 50  0001 C CNN
F 3 "~" H 4450 3100 50  0001 C CNN
	1    4450 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5C7D9B9F
P 3700 1800
F 0 "R5" V 3550 1775 50  0000 C CNN
F 1 "50m" V 3595 1800 50  0001 C CNN
F 2 "calisco-general:R_0402" H 3700 1800 50  0001 C CNN
F 3 "~" H 3700 1800 50  0001 C CNN
	1    3700 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C5
U 1 1 5C7DB4BD
P 3250 2575
F 0 "C5" H 3200 2425 50  0000 R CNN
F 1 "20uF" H 3475 2350 50  0001 R CNN
F 2 "calisco-general:C_0603" H 3250 2575 50  0001 C CNN
F 3 "~" H 3250 2575 50  0001 C CNN
	1    3250 2575
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C4
U 1 1 5C7DCC13
P 3075 2175
F 0 "C4" H 3175 2225 50  0000 R CNN
F 1 "1uF" H 3300 2350 50  0001 R CNN
F 2 "calisco-general:C_0603" H 3075 2175 50  0001 C CNN
F 3 "~" H 3075 2175 50  0001 C CNN
	1    3075 2175
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C7EA33D
P 1825 2175
F 0 "R2" V 1925 2175 50  0000 C CNN
F 1 "150" V 1930 2175 50  0001 C CNN
F 2 "calisco-general:R_0402" H 1825 2175 50  0001 C CNN
F 3 "~" H 1825 2175 50  0001 C CNN
	1    1825 2175
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C3
U 1 1 5C7EE93E
P 2050 2275
F 0 "C3" H 1925 2275 50  0000 R CNN
F 1 "100pF" H 1950 2375 50  0001 R CNN
F 2 "calisco-general:C_0402" H 2050 2275 50  0001 C CNN
F 3 "~" H 2050 2275 50  0001 C CNN
	1    2050 2275
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4002 D1
U 1 1 5C7FEC71
P 3700 2050
F 0 "D1" H 3650 1925 50  0000 C CNN
F 1 "D" V 3700 2175 50  0001 C CNN
F 2 "user_mb:DO-219AB" H 3700 1875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3700 2050 50  0001 C CNN
	1    3700 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 3200 5150 3200
Wire Wire Line
	5000 2125 5150 2125
$Comp
L Device:CP1_Small C12
U 1 1 5C803EDA
P 10375 2075
F 0 "C12" H 10675 2100 50  0000 R CNN
F 1 "1uF" H 10284 2120 50  0001 R CNN
F 2 "calisco-general:C_0402" H 10375 2075 50  0001 C CNN
F 3 "~" H 10375 2075 50  0001 C CNN
	1    10375 2075
	1    0    0    -1  
$EndComp
Text Label 1225 3750 0    50   ~ 0
5V
Text Label 1725 2675 0    50   ~ 0
5V
Text Label 1225 3975 0    50   ~ 0
GNDI
Text Label 1225 2375 0    50   ~ 0
GNDI
Text Label 10200 1975 0    50   ~ 0
5V
Text Label 10025 2275 0    50   ~ 0
GNDI
$Comp
L 0pg-discretes:NFET_EPC2 Q3
U 1 1 5C811978
P 6575 1900
F 0 "Q3" H 6475 1700 50  0000 L CNN
F 1 "NFET_EPC2" H 6475 1600 50  0001 L CNN
F 2 "user_dc:EPC_EPC203x_BGA-24" H 6825 1800 50  0001 L CIN
F 3 "http://epc-co.com/epc/Portals/0/epc/documents/datasheets/EPC2033_datasheet.pdf" H 6575 1900 50  0001 L CNN
	1    6575 1900
	-1   0    0    -1  
$EndComp
$Comp
L 0pg-discretes:NFET_EPC2 Q4
U 1 1 5C814DD5
P 6575 3000
F 0 "Q4" H 6450 2800 50  0000 L CNN
F 1 "NFET_EPC2" H 6225 2700 50  0001 L CNN
F 2 "user_dc:EPC_EPC203x_BGA-24" H 6825 2900 50  0001 L CIN
F 3 "http://epc-co.com/epc/Portals/0/epc/documents/datasheets/EPC2033_datasheet.pdf" H 6575 3000 50  0001 L CNN
	1    6575 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6325 2100 6475 2100
$Comp
L Device:R_Small R13
U 1 1 5C8187AD
P 10075 2475
F 0 "R13" V 10000 2450 50  0000 C CNN
F 1 "150" V 9950 2450 50  0001 C CNN
F 2 "calisco-general:R_0402" H 10075 2475 50  0001 C CNN
F 3 "~" H 10075 2475 50  0001 C CNN
	1    10075 2475
	0    1    1    0   
$EndComp
$Comp
L Device:CP1_Small C10
U 1 1 5C8189F7
P 9650 2375
F 0 "C10" H 9525 2375 50  0000 R CNN
F 1 "100pF" H 9975 2425 50  0001 R CNN
F 2 "calisco-general:C_0402" H 9650 2375 50  0001 C CNN
F 3 "~" H 9650 2375 50  0001 C CNN
	1    9650 2375
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5C83B8F5
P 6925 1850
F 0 "R8" V 6825 1850 50  0000 C CNN
F 1 "22" V 6820 1850 50  0001 C CNN
F 2 "calisco-general:R_0402" H 6925 1850 50  0001 C CNN
F 3 "~" H 6925 1850 50  0001 C CNN
	1    6925 1850
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D4
U 1 1 5C83B95B
P 6975 2050
F 0 "D4" H 6975 2175 50  0000 C CNN
F 1 "D_Schottky" H 6900 2175 50  0001 C CNN
F 2 "calisco-general:D_0402" H 6975 2050 50  0001 C CNN
F 3 "~" H 6975 2050 50  0001 C CNN
	1    6975 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6775 1950 6775 1850
Wire Wire Line
	6775 1850 6825 1850
Wire Wire Line
	6775 2050 6775 1950
Connection ~ 6775 1950
$Comp
L Device:R_Small R9
U 1 1 5C845DA4
P 6950 2950
F 0 "R9" V 6850 3025 50  0000 C CNN
F 1 "22" V 6845 2950 50  0001 C CNN
F 2 "calisco-general:R_0402" H 6950 2950 50  0001 C CNN
F 3 "~" H 6950 2950 50  0001 C CNN
	1    6950 2950
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D5
U 1 1 5C845E30
P 6975 3150
F 0 "D5" H 6900 3275 50  0000 C CNN
F 1 "D_Schottky" H 6750 3250 50  0001 C CNN
F 2 "calisco-general:D_0402" H 6975 3150 50  0001 C CNN
F 3 "~" H 6975 3150 50  0001 C CNN
	1    6975 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6825 2950 6850 2950
Text Label 1225 4200 0    50   ~ 0
5.5V_Iso
Text Label 2975 1050 3    50   ~ 0
5.5V_Iso
$Comp
L Diode:1N4002 D6
U 1 1 5C868A6D
P 7700 2525
F 0 "D6" V 7725 2425 50  0000 C CNN
F 1 "D" V 7750 2650 50  0000 C CNN
F 2 "user_mb:DO-219AB" H 7700 2350 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7700 2525 50  0001 C CNN
	1    7700 2525
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5C87CC26
P 7700 2275
F 0 "R10" H 7525 2300 50  0000 C CNN
F 1 "50m" H 7600 2275 50  0001 C CNN
F 2 "calisco-general:R_0402" H 7700 2275 50  0001 C CNN
F 3 "~" H 7700 2275 50  0001 C CNN
	1    7700 2275
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C7
U 1 1 5C8A70EF
P 8375 2475
F 0 "C7" H 8325 2625 50  0000 R CNN
F 1 "4.7uF" H 8325 2450 50  0001 R CNN
F 2 "calisco-general:C_0603" H 8375 2475 50  0001 C CNN
F 3 "~" H 8375 2475 50  0001 C CNN
	1    8375 2475
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C9
U 1 1 5C8A7316
P 8600 2475
F 0 "C9" H 8575 2625 50  0000 R CNN
F 1 "4.7uF" H 9125 2450 50  0001 R CNN
F 2 "calisco-general:C_0603" H 8600 2475 50  0001 C CNN
F 3 "~" H 8600 2475 50  0001 C CNN
	1    8600 2475
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 1725 5000 1350
Wire Wire Line
	5000 1350 5225 1350
Wire Wire Line
	6475 1350 6475 1700
Wire Wire Line
	5000 3200 5000 3575
Connection ~ 5000 3200
Wire Wire Line
	5000 2125 5000 2450
Connection ~ 5000 2125
Connection ~ 6475 2100
Wire Wire Line
	6325 3200 6475 3200
Wire Wire Line
	6825 2950 6825 3050
Connection ~ 6475 3200
Wire Wire Line
	6475 3200 6475 3575
Connection ~ 5000 2450
Wire Wire Line
	6100 2450 6225 2450
Connection ~ 6475 2450
Wire Wire Line
	6475 2450 6475 2800
Wire Wire Line
	6775 3050 6825 3050
Connection ~ 6825 3050
Wire Wire Line
	6825 3050 6825 3150
Text Label 7700 1175 1    50   ~ 0
5.5V_Iso
Wire Wire Line
	5000 3575 5225 3575
$Comp
L Connector:TestPoint TP4
U 1 1 5C9EFACF
P 1650 2675
F 0 "TP4" H 1708 2795 50  0000 L CNN
F 1 "TestPoint" H 1708 2704 50  0001 L CNN
F 2 "user_dc:Via_24milC" H 1850 2675 50  0001 C CNN
F 3 "~" H 1850 2675 50  0001 C CNN
	1    1650 2675
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5C9EFB6D
P 5225 3575
F 0 "TP8" H 5425 3725 50  0000 R CNN
F 1 "TestPoint" H 5650 3825 50  0001 R CNN
F 2 "user_dc:Pad_Power" H 5425 3575 50  0001 C CNN
F 3 "~" H 5425 3575 50  0001 C CNN
	1    5225 3575
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5C9F04E0
P 1300 2175
F 0 "TP2" H 1350 2300 50  0000 L CNN
F 1 "TestPoint" H 900 2325 50  0001 L CNN
F 2 "user_dc:Via_24milC" H 1500 2175 50  0001 C CNN
F 3 "~" H 1500 2175 50  0001 C CNN
	1    1300 2175
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 5C9F12F3
P 10275 2175
F 0 "TP9" V 10200 2150 50  0000 L CNN
F 1 "TestPoint" V 10300 1950 50  0001 L CNN
F 2 "user_dc:Via_24milC" H 10475 2175 50  0001 C CNN
F 3 "~" H 10475 2175 50  0001 C CNN
	1    10275 2175
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP11
U 1 1 5C9F1796
P 10575 2475
F 0 "TP11" V 10500 2550 50  0000 L CNN
F 1 "TestPoint" H 10400 2700 50  0001 L CNN
F 2 "user_dc:Via_24milC" H 10775 2475 50  0001 C CNN
F 3 "~" H 10775 2475 50  0001 C CNN
	1    10575 2475
	0    1    1    0   
$EndComp
Connection ~ 5225 3575
$Comp
L Connector:TestPoint TP5
U 1 1 5C9F1E53
P 1100 2375
F 0 "TP5" V 1200 2500 50  0000 R CNN
F 1 "TestPoint" V 1475 2350 50  0001 R CNN
F 2 "user_dc:Via_24milC" H 1300 2375 50  0001 C CNN
F 3 "~" H 1300 2375 50  0001 C CNN
	1    1100 2375
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 5C9F266B
P 5225 1350
F 0 "TP7" H 5425 1500 50  0000 R CNN
F 1 "TestPoint" H 5650 1600 50  0001 R CNN
F 2 "user_dc:Pad_Power" H 5425 1350 50  0001 C CNN
F 3 "~" H 5425 1350 50  0001 C CNN
	1    5225 1350
	1    0    0    -1  
$EndComp
Connection ~ 5225 1350
Text Label 1350 2175 0    50   Italic 0
PWMA1
Text Label 5925 1350 0    50   Italic 0
Vc2Pos
Wire Wire Line
	5225 1350 5750 1350
Text Label 5875 3575 0    50   Italic 0
Vc2Neg
Wire Wire Line
	5225 3575 5750 3575
Text Label 10275 2475 0    50   Italic 0
PWM2
Text Label 1825 2475 0    50   Italic 0
Enable1
Text Label 6225 2450 0    50   Italic 0
CfNeg
Text Label 5075 2450 0    50   Italic 0
LfNeg
Text Label 4100 1925 0    50   Italic 0
OutB1
Text Label 4700 1975 3    50   Italic 0
GateB1
Text Label 4700 3050 1    50   Italic 0
GateA1
Text Label 1950 2175 0    50   Italic 0
In1
Text Label 6775 1950 0    50   Italic 0
GateA2
Text Label 6800 3050 1    50   Italic 0
GateB2
Text Label 7825 2075 0    50   Italic 0
OutB2
Text Label 7875 2675 0    50   Italic 0
VDDA2
Text Label 9775 2475 0    50   Italic 0
In2
$Comp
L Connector:TestPoint TP17
U 1 1 5C80907B
P 9650 1975
F 0 "TP17" H 9650 2175 50  0000 L CNN
F 1 "TestPoint" H 9700 2075 50  0001 L CNN
F 2 "user_dc:Via_24milC" H 9850 1975 50  0001 C CNN
F 3 "~" H 9850 1975 50  0001 C CNN
	1    9650 1975
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP15
U 1 1 5C809F7D
P 7700 1175
F 0 "TP15" H 7758 1295 50  0000 L CNN
F 1 "TestPoint" H 7600 1075 50  0001 L CNN
F 2 "user_dc:Via_24milC" H 7900 1175 50  0001 C CNN
F 3 "~" H 7900 1175 50  0001 C CNN
	1    7700 1175
	0    -1   -1   0   
$EndComp
Connection ~ 7700 1175
Wire Wire Line
	7700 1175 7700 925 
$Comp
L Connector:TestPoint TP12
U 1 1 5C80AB2E
P 5050 2450
F 0 "TP12" H 4925 2500 50  0000 R CNN
F 1 "TestPoint" H 5475 2700 50  0001 R CNN
F 2 "user_dc:Pad_Power" H 5250 2450 50  0001 C CNN
F 3 "~" H 5250 2450 50  0001 C CNN
	1    5050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  4200 1575 4200
Wire Wire Line
	5000 2450 5050 2450
Wire Wire Line
	950  3750 1575 3750
Wire Wire Line
	950  3975 1575 3975
Connection ~ 5050 2450
Wire Wire Line
	5050 2450 5275 2450
$Comp
L Connector:TestPoint TP13
U 1 1 5C836B18
P 6225 2450
F 0 "TP13" H 6425 2600 50  0000 R CNN
F 1 "TestPoint" H 6650 2700 50  0001 R CNN
F 2 "user_dc:Pad_Power" H 6425 2450 50  0001 C CNN
F 3 "~" H 6425 2450 50  0001 C CNN
	1    6225 2450
	1    0    0    -1  
$EndComp
Connection ~ 6225 2450
Wire Wire Line
	6225 2450 6475 2450
$Comp
L Device:C_Small C0
U 1 1 5C86D4D7
P 5750 2350
F 0 "C0" H 5842 2396 50  0000 L CNN
F 1 "0.1uF" H 5842 2305 50  0000 L CNN
F 2 "calisco-general:C_0805" H 5750 2350 50  0001 C CNN
F 3 "~" H 5750 2350 50  0001 C CNN
	1    5750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2250 5750 1350
Connection ~ 5750 1350
Wire Wire Line
	5750 1350 6475 1350
Wire Wire Line
	5750 2450 5750 3575
Connection ~ 5750 3575
Wire Wire Line
	5750 3575 6475 3575
Wire Wire Line
	5000 2450 5000 2800
$Comp
L Device:CP1_Small C6
U 1 1 5C7E2F45
P 3075 2575
F 0 "C6" H 3100 2425 50  0000 R CNN
F 1 "20uF" H 3200 2350 50  0001 R CNN
F 2 "calisco-general:C_0603" H 3075 2575 50  0001 C CNN
F 3 "~" H 3075 2575 50  0001 C CNN
	1    3075 2575
	1    0    0    -1  
$EndComp
Text Label 2975 2475 0    60   ~ 0
VDDB1
$Comp
L Device:CP1_Small C8
U 1 1 5C864C27
P 8475 2075
F 0 "C8" H 8375 1925 50  0000 R CNN
F 1 "1uF" H 8700 2125 50  0001 R CNN
F 2 "calisco-general:C_0603" H 8475 2075 50  0001 C CNN
F 3 "~" H 8475 2075 50  0001 C CNN
	1    8475 2075
	-1   0    0    1   
$EndComp
Wire Wire Line
	8000 1975 8325 1975
Text Label 8150 1975 0    60   ~ 0
Vc2Neg
$Comp
L 0pg-discretes:D_ZENER D8
U 1 1 5D9471D0
P 3700 2625
F 0 "D8" H 3778 2663 40  0000 L CNN
F 1 "D_ZENER" H 3778 2587 40  0001 L CNN
F 2 "user_dc:SOD-123F" V 3620 2625 40  0001 C CNN
F 3 "" V 3620 2625 40  0001 C CNN
	1    3700 2625
	1    0    0    -1  
$EndComp
$Comp
L 0pg-discretes:D_ZENER D7
U 1 1 5D9BB046
P 8200 2525
F 0 "D7" H 8100 2450 40  0000 L CNN
F 1 "D_ZENER" H 8278 2487 40  0001 L CNN
F 2 "user_dc:SOD-123F" V 8120 2525 40  0001 C CNN
F 3 "" V 8120 2525 40  0001 C CNN
	1    8200 2525
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C2
U 1 1 5D9DB8D3
P 8325 2075
F 0 "C2" H 8350 1825 50  0000 R CNN
F 1 "1uF" H 8100 2100 50  0001 R CNN
F 2 "calisco-general:C_0603" H 8325 2075 50  0001 C CNN
F 3 "~" H 8325 2075 50  0001 C CNN
	1    8325 2075
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1_Small C11
U 1 1 5D9FD546
P 3225 2175
F 0 "C11" H 3325 2225 50  0000 R CNN
F 1 "1uF" H 3400 2350 50  0001 R CNN
F 2 "calisco-general:C_0603" H 3225 2175 50  0001 C CNN
F 3 "~" H 3225 2175 50  0001 C CNN
	1    3225 2175
	1    0    0    -1  
$EndComp
$Comp
L user_kf:Si8274 U2
U 1 1 5D935854
P 2575 2425
F 0 "U2" H 2575 3062 60  0000 C CNN
F 1 "Si8274" H 2575 2956 60  0000 C CNN
F 2 "user_dc:Si8274" H 2575 2425 60  0001 C CNN
F 3 "" H 2575 2425 60  0001 C CNN
	1    2575 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2475 2175 2475
$Comp
L Device:R_Small R3
U 1 1 5D95AAC7
P 1725 2475
F 0 "R3" H 1650 2525 50  0000 C CNN
F 1 "70k" V 1775 2350 50  0001 C CNN
F 2 "calisco-general:R_0402" H 1725 2475 50  0001 C CNN
F 3 "~" H 1725 2475 50  0001 C CNN
	1    1725 2475
	1    0    0    -1  
$EndComp
Text Label 2000 2575 0    60   ~ 0
DT1
Wire Wire Line
	1925 2175 2050 2175
Wire Wire Line
	2975 2075 3075 2075
Wire Wire Line
	2975 2475 3075 2475
Wire Wire Line
	2975 2675 3075 2675
Connection ~ 9650 1975
Wire Wire Line
	9650 1975 10375 1975
$Comp
L Device:R_Small R1
U 1 1 5D9EE070
P 9750 2075
F 0 "R1" V 9800 2050 50  0000 C CNN
F 1 "150" V 9800 2250 50  0001 C CNN
F 2 "calisco-general:R_0402" H 9750 2075 50  0001 C CNN
F 3 "~" H 9750 2075 50  0001 C CNN
	1    9750 2075
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 5C9F0E8F
P 1250 2475
F 0 "TP6" V 1250 2675 50  0000 L CNN
F 1 "TestPoint" V 1300 2425 50  0001 L CNN
F 2 "user_dc:Via_24milC" H 1450 2475 50  0001 C CNN
F 3 "~" H 1450 2475 50  0001 C CNN
	1    1250 2475
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 2175 10025 2175
Wire Wire Line
	9550 2275 9650 2275
Wire Wire Line
	9850 2275 9850 2075
Wire Wire Line
	9650 2075 9550 2075
Connection ~ 9850 2275
$Comp
L Connector:TestPoint TP3
U 1 1 5DA37CFD
P 10425 2275
F 0 "TP3" V 10425 2500 50  0000 L CNN
F 1 "TestPoint" V 10450 2050 50  0001 L CNN
F 2 "user_dc:Via_24milC" H 10625 2275 50  0001 C CNN
F 3 "~" H 10625 2275 50  0001 C CNN
	1    10425 2275
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 1975 9650 1975
Wire Wire Line
	9525 1975 9550 1975
Connection ~ 9550 1975
$Comp
L user_kf:Si8274 U1
U 1 1 5D9C9398
P 9150 2225
F 0 "U1" H 9150 1688 60  0000 C CNN
F 1 "Si8274" H 9150 1794 60  0000 C CNN
F 2 "user_dc:Si8274" H 9150 2225 60  0001 C CNN
F 3 "" H 9150 2225 60  0001 C CNN
	1    9150 2225
	-1   0    0    1   
$EndComp
Connection ~ 9650 2275
Wire Wire Line
	9650 2275 9850 2275
Wire Wire Line
	9850 2275 10375 2275
Wire Wire Line
	10375 2175 10375 2275
Connection ~ 10375 2275
Wire Wire Line
	10375 2275 10425 2275
Wire Wire Line
	9550 2475 9650 2475
Connection ~ 9650 2475
Wire Wire Line
	9650 2475 9975 2475
Wire Wire Line
	10175 2475 10575 2475
Connection ~ 8475 1975
Wire Wire Line
	8475 1975 8750 1975
Connection ~ 8325 1975
Wire Wire Line
	8325 1975 8475 1975
Wire Wire Line
	8750 2075 7775 2075
Wire Wire Line
	8325 2175 8475 2175
Connection ~ 8475 2175
Wire Wire Line
	8475 2175 8750 2175
Wire Wire Line
	8325 2175 7700 2175
Wire Wire Line
	7700 1175 7700 2175
Connection ~ 8325 2175
Wire Wire Line
	6825 2050 6775 2050
Wire Wire Line
	7125 2050 7125 1850
Wire Wire Line
	7125 1850 7025 1850
Wire Wire Line
	7125 1850 7425 1850
Connection ~ 7125 1850
Text Label 7175 1850 0    50   Italic 0
OutA2
Wire Wire Line
	7125 3150 7125 2950
Wire Wire Line
	7125 2950 7050 2950
Wire Wire Line
	7125 2950 7425 2950
Connection ~ 7125 2950
Text Label 7150 2950 0    50   Italic 0
OutB2
Wire Wire Line
	6475 2100 6475 2450
Wire Wire Line
	8375 2575 8600 2575
Connection ~ 8600 2575
Wire Wire Line
	8600 2575 8750 2575
Wire Wire Line
	8750 2375 8600 2375
Connection ~ 8600 2375
Wire Wire Line
	8600 2375 8375 2375
Connection ~ 7700 2175
Connection ~ 8375 2575
Wire Wire Line
	8375 2575 8375 2675
Wire Wire Line
	7700 2675 8200 2675
Connection ~ 8200 2675
Wire Wire Line
	8200 2675 8375 2675
Wire Wire Line
	7875 2475 8750 2475
Text Label 7875 2475 0    50   Italic 0
OutA2
Text Label 8275 2375 0    50   Italic 0
CfNeg
Connection ~ 2050 2175
Wire Wire Line
	2050 2175 2175 2175
Connection ~ 2050 2375
Wire Wire Line
	2050 2375 2175 2375
Wire Wire Line
	1725 2175 1300 2175
Connection ~ 1300 2175
Wire Wire Line
	1300 2175 1225 2175
Connection ~ 1725 2375
Wire Wire Line
	1725 2375 2050 2375
Wire Wire Line
	1725 2575 2175 2575
Wire Wire Line
	1100 2675 1650 2675
Wire Wire Line
	1100 2475 1100 2375
Wire Wire Line
	1100 2375 1725 2375
Connection ~ 1100 2375
Connection ~ 1650 2675
Wire Wire Line
	1650 2675 2175 2675
Wire Wire Line
	2975 2075 2975 1700
Connection ~ 2975 2075
Wire Wire Line
	2975 2275 3075 2275
Connection ~ 3075 2075
Connection ~ 3075 2275
Wire Wire Line
	3075 2275 3225 2275
Connection ~ 3225 2275
Wire Wire Line
	3225 2275 3450 2275
Wire Wire Line
	3075 2075 3225 2075
Text Label 3300 2275 0    50   Italic 0
Vc2Neg
Wire Wire Line
	4625 1925 4625 1975
Wire Wire Line
	4700 1975 4625 1975
Connection ~ 4625 1975
Wire Wire Line
	4625 1975 4625 2075
Wire Wire Line
	4325 2075 4325 1925
Wire Wire Line
	4325 1925 4425 1925
Wire Wire Line
	4325 1925 4100 1925
Connection ~ 4325 1925
Connection ~ 3075 2475
Wire Wire Line
	3075 2475 3250 2475
Connection ~ 3075 2675
Wire Wire Line
	3075 2675 3250 2675
Wire Wire Line
	4600 3000 4600 3050
Wire Wire Line
	4700 3050 4600 3050
Connection ~ 4600 3050
Wire Wire Line
	4600 3050 4600 3100
Wire Wire Line
	4400 3000 4300 3000
Wire Wire Line
	4300 3000 4300 3050
Wire Wire Line
	4300 3050 4025 3050
Connection ~ 4300 3050
Wire Wire Line
	4300 3050 4300 3100
Text Label 4050 3050 0    50   Italic 0
OutA1
Text Label 3325 2575 0    50   Italic 0
OutB1
Wire Wire Line
	2975 2175 3425 2175
Wire Wire Line
	3700 1700 2975 1700
Connection ~ 2975 1700
Wire Wire Line
	2975 1700 2975 925 
Wire Wire Line
	2975 2575 3475 2575
Text Label 3325 2175 0    50   Italic 0
OutA1
Wire Wire Line
	3700 2475 3250 2475
Connection ~ 3250 2475
Wire Wire Line
	3250 2675 3250 2775
Wire Wire Line
	3250 2775 3700 2775
Connection ~ 3250 2675
Wire Wire Line
	3700 2200 3700 2475
Connection ~ 3700 2475
Text Label 3375 2775 0    50   Italic 0
LfNeg
$Comp
L Connector:TestPoint TP1
U 1 1 5CA593A2
P 3450 2275
F 0 "TP1" H 3275 2350 50  0000 L CNN
F 1 "TestPoint" H 3475 2550 50  0001 L CNN
F 2 "user_dc:Via_24milC" H 3650 2275 50  0001 C CNN
F 3 "~" H 3650 2275 50  0001 C CNN
	1    3450 2275
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5D956AF1
P 1450 2475
F 0 "R11" H 1375 2525 50  0000 C CNN
F 1 "70k" V 1500 2350 50  0001 C CNN
F 2 "calisco-general:R_0402" H 1450 2475 50  0001 C CNN
F 3 "~" H 1450 2475 50  0001 C CNN
	1    1450 2475
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5D956E0A
P 10125 2175
F 0 "R4" H 10050 2225 50  0000 C CNN
F 1 "70k" V 10175 2050 50  0001 C CNN
F 2 "calisco-general:R_0402" H 10125 2175 50  0001 C CNN
F 3 "~" H 10125 2175 50  0001 C CNN
	1    10125 2175
	0    1    1    0   
$EndComp
Text Label 9650 2175 0    60   ~ 0
Enable2
Text Label 10250 2175 0    60   ~ 0
EnableL2
Text Label 1325 2475 0    60   ~ 0
EnableL1
Wire Wire Line
	1250 2475 1350 2475
Wire Wire Line
	10275 2175 10225 2175
Text Label 9575 2075 0    60   ~ 0
DT2
Wire Wire Line
	8200 2375 8375 2375
Connection ~ 8375 2375
$EndSCHEMATC
