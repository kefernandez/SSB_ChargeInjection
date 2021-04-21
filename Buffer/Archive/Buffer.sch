EESchema Schematic File Version 4
LIBS:Buffer-cache
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
L 0pg-discretes:NFET_EPC2 Q1
U 1 1 5C76F2EE
P 4900 1925
F 0 "Q1" H 4850 1725 50  0000 L CNN
F 1 "NFET_EPC2" H 4750 1625 50  0000 L CNN
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
F 1 "NFET_EPC2" H 4550 2700 50  0000 L CNN
F 2 "user_dc:EPC_EPC203x_BGA-24" H 5150 2900 50  0001 L CIN
F 3 "http://epc-co.com/epc/Portals/0/epc/documents/datasheets/EPC2033_datasheet.pdf" H 4900 3000 50  0001 L CNN
	1    4900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2675 1325 2675
Wire Wire Line
	1600 2375 1600 2075
$Comp
L Device:CP1_Small C1
U 1 1 5C773AD2
P 1325 2400
F 0 "C1" H 1234 2354 50  0000 R CNN
F 1 "1uF" H 1234 2445 50  0000 R CNN
F 2 "calisco-general:C_0402" H 1325 2400 50  0001 C CNN
F 3 "~" H 1325 2400 50  0001 C CNN
	1    1325 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1325 2500 1325 2675
Wire Wire Line
	1325 2300 1325 2075
Connection ~ 1325 2075
$Comp
L Device:R_Small R1
U 1 1 5C773E4A
P 1125 2675
F 0 "R1" V 1321 2675 50  0000 C CNN
F 1 "732k" V 1230 2675 50  0000 C CNN
F 2 "calisco-general:R_0402" H 1125 2675 50  0001 C CNN
F 3 "~" H 1125 2675 50  0001 C CNN
	1    1125 2675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1225 2675 1325 2675
Connection ~ 1325 2675
$Comp
L Device:R_Small R7
U 1 1 5C782F1F
P 4250 1800
F 0 "R7" V 4054 1800 50  0000 C CNN
F 1 "22" V 4145 1800 50  0000 C CNN
F 2 "calisco-general:R_0402" H 4250 1800 50  0001 C CNN
F 3 "~" H 4250 1800 50  0001 C CNN
	1    4250 1800
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 5C7842B2
P 4275 2175
F 0 "D3" H 4275 2391 50  0000 C CNN
F 1 "D_Schottky" H 4275 2300 50  0000 C CNN
F 2 "calisco-general:D_0402" H 4275 2175 50  0001 C CNN
F 3 "~" H 4275 2175 50  0001 C CNN
	1    4275 2175
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5C786BC6
P 3775 2950
F 0 "R6" V 3725 3125 50  0000 C CNN
F 1 "22" V 3725 2800 50  0000 C CNN
F 2 "calisco-general:R_0402" H 3775 2950 50  0001 C CNN
F 3 "~" H 3775 2950 50  0001 C CNN
	1    3775 2950
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 5C786C26
P 3775 3250
F 0 "D2" H 3925 3150 50  0000 C CNN
F 1 "D_Schottky" H 3775 3375 50  0000 C CNN
F 2 "calisco-general:D_0402" H 3775 3250 50  0001 C CNN
F 3 "~" H 3775 3250 50  0001 C CNN
	1    3775 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 2950 4175 2950
Wire Wire Line
	4175 2950 4175 3050
Wire Wire Line
	4175 3250 3925 3250
Connection ~ 4175 3050
Wire Wire Line
	4175 3050 4175 3250
Wire Wire Line
	3375 2950 3675 2950
Wire Wire Line
	3375 2950 3375 3250
Wire Wire Line
	3375 3250 3625 3250
Connection ~ 3375 2950
$Comp
L Device:R_Small R4
U 1 1 5C7D737B
P 3200 1275
F 0 "R4" V 3004 1275 50  0000 C CNN
F 1 "10" V 3095 1275 50  0000 C CNN
F 2 "calisco-general:R_0402" H 3200 1275 50  0001 C CNN
F 3 "~" H 3200 1275 50  0001 C CNN
	1    3200 1275
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4150 1800 3950 1800
Wire Wire Line
	3950 2175 4125 2175
Wire Wire Line
	4350 1800 4700 1800
Wire Wire Line
	4700 1800 4700 1975
Wire Wire Line
	4700 1975 4700 2175
Wire Wire Line
	4700 2175 4425 2175
Connection ~ 4700 1975
$Comp
L Device:R_Small R5
U 1 1 5C7D9B9F
P 3700 1925
F 0 "R5" V 3504 1925 50  0000 C CNN
F 1 "50m" V 3595 1925 50  0000 C CNN
F 2 "calisco-general:R_0402" H 3700 1925 50  0001 C CNN
F 3 "~" H 3700 1925 50  0001 C CNN
	1    3700 1925
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 2075 3100 1750
$Comp
L Device:CP1_Small C5
U 1 1 5C7DB4BD
P 3800 2575
F 0 "C5" H 3975 2425 50  0000 R CNN
F 1 "20uF" H 4025 2350 50  0000 R CNN
F 2 "calisco-general:C_0603" H 3800 2575 50  0001 C CNN
F 3 "~" H 3800 2575 50  0001 C CNN
	1    3800 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2275 3100 2275
Wire Wire Line
	3300 2075 3300 2275
Wire Wire Line
	3300 1750 3300 1875
Connection ~ 3300 1750
$Comp
L Device:CP1_Small C4
U 1 1 5C7DCC13
P 3300 1975
F 0 "C4" H 3475 1975 50  0000 R CNN
F 1 "1uF" H 3625 1975 50  0000 R CNN
F 2 "calisco-general:C_0402" H 3300 1975 50  0001 C CNN
F 3 "~" H 3300 1975 50  0001 C CNN
	1    3300 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	4175 3050 4700 3050
Wire Wire Line
	3450 2275 3300 2275
Connection ~ 3300 2275
$Comp
L user_kf:2EDF7275K Inf2
U 1 1 5C7E42B1
P 8825 2725
F 0 "Inf2" H 9100 2913 60  0000 C CNN
F 1 "2EDF7275K" H 9100 2807 60  0000 C CNN
F 2 "user_dc:2EDF7275K" H 9125 1925 60  0001 C CNN
F 3 "" H 9125 1925 60  0001 C CNN
	1    8825 2725
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C7EA33D
P 1500 1325
F 0 "R2" V 1696 1325 50  0000 C CNN
F 1 "150" V 1605 1325 50  0000 C CNN
F 2 "calisco-general:R_0402" H 1500 1325 50  0001 C CNN
F 3 "~" H 1500 1325 50  0001 C CNN
	1    1500 1325
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5C7EA38D
P 1500 1550
F 0 "R3" V 1425 1550 50  0000 C CNN
F 1 "150" V 1350 1525 50  0000 C CNN
F 2 "calisco-general:R_0402" H 1500 1550 50  0001 C CNN
F 3 "~" H 1500 1550 50  0001 C CNN
	1    1500 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 1550 1350 1550
$Comp
L Device:CP1_Small C2
U 1 1 5C7ED364
P 2000 1700
F 0 "C2" H 1909 1654 50  0000 R CNN
F 1 "100pF" H 1909 1745 50  0000 R CNN
F 2 "calisco-general:C_0402" H 2000 1700 50  0001 C CNN
F 3 "~" H 2000 1700 50  0001 C CNN
	1    2000 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C3
U 1 1 5C7EE93E
P 2200 1700
F 0 "C3" H 2450 1675 50  0000 R CNN
F 1 "100pF" H 2525 1750 50  0000 R CNN
F 2 "calisco-general:C_0402" H 2200 1700 50  0001 C CNN
F 3 "~" H 2200 1700 50  0001 C CNN
	1    2200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1325 2200 1600
Wire Wire Line
	2000 1550 2000 1600
Wire Wire Line
	1900 1550 1900 2275
Connection ~ 1600 2075
Wire Wire Line
	1600 2075 1325 2075
Wire Wire Line
	1600 2375 2350 2375
Wire Wire Line
	1600 1325 2200 1325
Wire Wire Line
	2200 1325 2325 1325
Wire Wire Line
	2325 1325 2325 2175
Connection ~ 2200 1325
Wire Wire Line
	2325 2175 2350 2175
Connection ~ 1900 1550
Wire Wire Line
	1900 1550 2000 1550
Wire Wire Line
	1900 2275 2350 2275
Wire Wire Line
	1600 1550 1900 1550
$Comp
L Diode:1N4002 D1
U 1 1 5C7FEC71
P 3700 2250
F 0 "D1" H 3650 2125 50  0000 C CNN
F 1 "D" V 3700 2375 50  0000 C CNN
F 2 "user_mb:DO-219AB" H 3700 2075 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 3700 2250 50  0001 C CNN
	1    3700 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 3200 5150 3200
Wire Wire Line
	5000 2125 5150 2125
$Comp
L Device:R_Small R14
U 1 1 5C803E5C
P 10025 2075
F 0 "R14" V 10221 2075 50  0000 C CNN
F 1 "732k" V 10130 2075 50  0000 C CNN
F 2 "calisco-general:R_0402" H 10025 2075 50  0001 C CNN
F 3 "~" H 10025 2075 50  0001 C CNN
	1    10025 2075
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C12
U 1 1 5C803EDA
P 9825 2350
F 0 "C12" H 9734 2304 50  0000 R CNN
F 1 "1uF" H 9734 2395 50  0000 R CNN
F 2 "calisco-general:C_0402" H 9825 2350 50  0001 C CNN
F 3 "~" H 9825 2350 50  0001 C CNN
	1    9825 2350
	1    0    0    -1  
$EndComp
Text Label 1225 3750 0    50   ~ 0
5V
Text Label 825  2675 0    50   ~ 0
5V
Text Label 1225 3975 0    50   ~ 0
GNDI
Wire Wire Line
	750  2075 1175 2075
Text Label 850  2075 0    50   ~ 0
GNDI
Text Label 10350 2075 0    50   ~ 0
5V
Wire Wire Line
	8925 2675 9050 2675
Text Label 10375 2675 0    50   ~ 0
GNDI
$Comp
L 0pg-discretes:NFET_EPC2 Q3
U 1 1 5C811978
P 6575 1900
F 0 "Q3" H 6475 1700 50  0000 L CNN
F 1 "NFET_EPC2" H 6475 1600 50  0000 L CNN
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
F 1 "NFET_EPC2" H 6225 2700 50  0000 L CNN
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
P 9475 3600
F 0 "R13" V 9250 3550 50  0000 C CNN
F 1 "150" V 9350 3575 50  0000 C CNN
F 2 "calisco-general:R_0402" H 9475 3600 50  0001 C CNN
F 3 "~" H 9475 3600 50  0001 C CNN
	1    9475 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C10
U 1 1 5C8189F7
P 9175 2925
F 0 "C10" H 9425 2900 50  0000 R CNN
F 1 "100pF" H 9500 2975 50  0000 R CNN
F 2 "calisco-general:C_0402" H 9175 2925 50  0001 C CNN
F 3 "~" H 9175 2925 50  0001 C CNN
	1    9175 2925
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5C81C75E
P 9475 3425
F 0 "R12" V 9625 3425 50  0000 C CNN
F 1 "150" V 9550 3425 50  0000 C CNN
F 2 "calisco-general:R_0402" H 9475 3425 50  0001 C CNN
F 3 "~" H 9475 3425 50  0001 C CNN
	1    9475 3425
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9575 3425 9775 3425
Wire Wire Line
	9175 3600 9375 3600
$Comp
L Device:CP1_Small C11
U 1 1 5C823B0C
P 9375 2925
F 0 "C11" H 9100 2900 50  0000 R CNN
F 1 "100pF" H 9125 2975 50  0000 R CNN
F 2 "calisco-general:C_0402" H 9375 2925 50  0001 C CNN
F 3 "~" H 9375 2925 50  0001 C CNN
	1    9375 2925
	-1   0    0    1   
$EndComp
Wire Wire Line
	9375 3025 9375 3175
Wire Wire Line
	9175 2825 9175 2775
Connection ~ 9175 2675
Wire Wire Line
	9175 2775 9375 2775
Wire Wire Line
	9375 2775 9375 2825
Connection ~ 9175 2775
Wire Wire Line
	9175 2775 9175 2675
Wire Wire Line
	2000 1800 2200 1800
Wire Wire Line
	1600 2075 2200 2075
Wire Wire Line
	2200 1800 2200 2075
Connection ~ 2200 1800
Connection ~ 2200 2075
Wire Wire Line
	2200 2075 2350 2075
Wire Wire Line
	9575 3175 9575 2475
Connection ~ 9375 3175
Wire Wire Line
	9375 3175 9375 3425
Wire Wire Line
	9175 3025 9175 3125
Wire Wire Line
	9375 3175 9575 3175
Wire Wire Line
	8925 2475 9575 2475
Wire Wire Line
	9175 3125 9500 3125
Wire Wire Line
	9500 3125 9500 2575
Wire Wire Line
	8925 2575 9500 2575
Connection ~ 9175 3125
Wire Wire Line
	9175 3125 9175 3600
$Comp
L Device:R_Small R8
U 1 1 5C83B8F5
P 7050 1850
F 0 "R8" V 6854 1850 50  0000 C CNN
F 1 "22" V 6945 1850 50  0000 C CNN
F 2 "calisco-general:R_0402" H 7050 1850 50  0001 C CNN
F 3 "~" H 7050 1850 50  0001 C CNN
	1    7050 1850
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D4
U 1 1 5C83B95B
P 7050 2050
F 0 "D4" H 6975 2250 50  0000 C CNN
F 1 "D_Schottky" H 6975 2175 50  0000 C CNN
F 2 "calisco-general:D_0402" H 7050 2050 50  0001 C CNN
F 3 "~" H 7050 2050 50  0001 C CNN
	1    7050 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6775 1950 6775 1850
Wire Wire Line
	6775 1850 6950 1850
Wire Wire Line
	6900 2050 6775 2050
Wire Wire Line
	6775 2050 6775 1950
Connection ~ 6775 1950
Wire Wire Line
	7150 1850 7300 1850
Wire Wire Line
	7300 2050 7200 2050
$Comp
L Device:R_Small R9
U 1 1 5C845DA4
P 7050 2950
F 0 "R9" V 6854 2950 50  0000 C CNN
F 1 "22" V 6945 2950 50  0000 C CNN
F 2 "calisco-general:R_0402" H 7050 2950 50  0001 C CNN
F 3 "~" H 7050 2950 50  0001 C CNN
	1    7050 2950
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D5
U 1 1 5C845E30
P 7075 3150
F 0 "D5" H 7000 3350 50  0000 C CNN
F 1 "D_Schottky" H 6850 3250 50  0000 C CNN
F 2 "calisco-general:D_0402" H 7075 3150 50  0001 C CNN
F 3 "~" H 7075 3150 50  0001 C CNN
	1    7075 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	6825 2950 6950 2950
Wire Wire Line
	6925 3150 6825 3150
Wire Wire Line
	7225 3150 7350 3150
Wire Wire Line
	7350 2950 7150 2950
Text Label 1225 4200 0    50   ~ 0
5.5V_Iso
Text Label 3200 925  3    50   ~ 0
5.5V_Iso
$Comp
L Device:R_Small R11
U 1 1 5C85D33A
P 7700 1425
F 0 "R11" V 7504 1425 50  0000 C CNN
F 1 "10" V 7595 1425 50  0000 C CNN
F 2 "calisco-general:R_0402" H 7700 1425 50  0001 C CNN
F 3 "~" H 7700 1425 50  0001 C CNN
	1    7700 1425
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4002 D6
U 1 1 5C868A6D
P 7700 2850
F 0 "D6" V 7725 2750 50  0000 C CNN
F 1 "D" V 7750 2975 50  0000 C CNN
F 2 "user_mb:DO-219AB" H 7700 2675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7700 2850 50  0001 C CNN
	1    7700 2850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5C87CC26
P 7700 2475
F 0 "R10" H 7600 2550 50  0000 C CNN
F 1 "50m" H 7600 2475 50  0000 C CNN
F 2 "calisco-general:R_0402" H 7700 2475 50  0001 C CNN
F 3 "~" H 7700 2475 50  0001 C CNN
	1    7700 2475
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C7
U 1 1 5C8A70EF
P 7850 3175
F 0 "C7" H 7750 3250 50  0000 R CNN
F 1 "20uF" H 7800 3150 50  0000 R CNN
F 2 "calisco-general:C_0603" H 7850 3175 50  0001 C CNN
F 3 "~" H 7850 3175 50  0001 C CNN
	1    7850 3175
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C9
U 1 1 5C8A7316
P 8000 3175
F 0 "C9" H 8225 3250 50  0000 R CNN
F 1 "20uF" H 8275 3150 50  0000 R CNN
F 2 "calisco-general:C_0603" H 8000 3175 50  0001 C CNN
F 3 "~" H 8000 3175 50  0001 C CNN
	1    8000 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8925 2375 9050 2375
Wire Wire Line
	9050 2375 9050 2675
Connection ~ 9050 2675
Wire Wire Line
	9050 2675 9175 2675
Wire Wire Line
	8925 2275 9000 2275
Wire Wire Line
	10125 2075 10200 2075
Wire Wire Line
	8925 2075 9825 2075
Wire Wire Line
	9175 2675 9825 2675
Wire Wire Line
	9825 2250 9825 2075
Connection ~ 9825 2075
Wire Wire Line
	9825 2075 9925 2075
Wire Wire Line
	9825 2450 9825 2675
Connection ~ 9825 2675
Wire Wire Line
	9825 2675 10125 2675
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
Wire Wire Line
	3200 3575 5000 3575
Connection ~ 5000 3575
Text Label 7700 1175 1    50   ~ 0
5.5V_Iso
Wire Wire Line
	7700 1325 7700 1175
Wire Wire Line
	7700 2275 8175 2275
Wire Wire Line
	7700 2700 7700 2575
Wire Wire Line
	5000 3575 5225 3575
$Comp
L Connector:TestPoint TP4
U 1 1 5C9EFACF
P 875 2675
F 0 "TP4" H 933 2795 50  0000 L CNN
F 1 "TestPoint" H 933 2704 50  0000 L CNN
F 2 "user_dc:Via_24milC" H 1075 2675 50  0001 C CNN
F 3 "~" H 1075 2675 50  0001 C CNN
	1    875  2675
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 5C9EFB6D
P 5225 3575
F 0 "TP8" H 5425 3725 50  0000 R CNN
F 1 "TestPoint" H 5650 3825 50  0000 R CNN
F 2 "user_dc:Pad_Power" H 5425 3575 50  0001 C CNN
F 3 "~" H 5425 3575 50  0001 C CNN
	1    5225 3575
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5C9F04E0
P 1350 1325
F 0 "TP2" H 1200 1550 50  0000 L CNN
F 1 "TestPoint" H 950 1475 50  0000 L CNN
F 2 "user_dc:Via_24milC" H 1550 1325 50  0001 C CNN
F 3 "~" H 1550 1325 50  0001 C CNN
	1    1350 1325
	1    0    0    -1  
$EndComp
Connection ~ 1350 1325
Wire Wire Line
	1350 1325 1400 1325
$Comp
L Connector:TestPoint TP3
U 1 1 5C9F056E
P 1350 1550
F 0 "TP3" H 1175 1700 50  0000 L CNN
F 1 "TestPoint" H 975 1625 50  0000 L CNN
F 2 "user_dc:Via_24milC" H 1550 1550 50  0001 C CNN
F 3 "~" H 1550 1550 50  0001 C CNN
	1    1350 1550
	1    0    0    -1  
$EndComp
Connection ~ 1350 1550
$Comp
L Connector:TestPoint TP6
U 1 1 5C9F0E8F
P 2100 2475
F 0 "TP6" H 2175 2850 50  0000 L CNN
F 1 "TestPoint" H 2125 2750 50  0000 L CNN
F 2 "user_dc:Via_24milC" H 2300 2475 50  0001 C CNN
F 3 "~" H 2300 2475 50  0001 C CNN
	1    2100 2475
	-1   0    0    1   
$EndComp
Connection ~ 2100 2475
Wire Wire Line
	2100 2475 2350 2475
$Comp
L Connector:TestPoint TP9
U 1 1 5C9F12F3
P 9000 2275
F 0 "TP9" H 9025 2400 50  0000 L CNN
F 1 "TestPoint" H 9175 2400 50  0000 L CNN
F 2 "user_dc:Via_24milC" H 9200 2275 50  0001 C CNN
F 3 "~" H 9200 2275 50  0001 C CNN
	1    9000 2275
	1    0    0    -1  
$EndComp
Connection ~ 9000 2275
$Comp
L Connector:TestPoint TP10
U 1 1 5C9F1638
P 9775 3425
F 0 "TP10" H 9800 3550 50  0000 L CNN
F 1 "TestPoint" H 9950 3550 50  0000 L CNN
F 2 "user_dc:Via_24milC" H 9975 3425 50  0001 C CNN
F 3 "~" H 9975 3425 50  0001 C CNN
	1    9775 3425
	1    0    0    -1  
$EndComp
Connection ~ 9775 3425
$Comp
L Connector:TestPoint TP11
U 1 1 5C9F1796
P 9850 3600
F 0 "TP11" H 9875 3725 50  0000 L CNN
F 1 "TestPoint" H 9675 3825 50  0000 L CNN
F 2 "user_dc:Via_24milC" H 10050 3600 50  0001 C CNN
F 3 "~" H 10050 3600 50  0001 C CNN
	1    9850 3600
	-1   0    0    1   
$EndComp
Connection ~ 9850 3600
Wire Wire Line
	9850 3600 9575 3600
Connection ~ 5225 3575
$Comp
L Connector:TestPoint TP5
U 1 1 5C9F1E53
P 1175 2075
F 0 "TP5" H 1375 2150 50  0000 R CNN
F 1 "TestPoint" H 1550 2050 50  0000 R CNN
F 2 "user_dc:Via_24milC" H 1375 2075 50  0001 C CNN
F 3 "~" H 1375 2075 50  0001 C CNN
	1    1175 2075
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 5C9F266B
P 5225 1350
F 0 "TP7" H 5425 1500 50  0000 R CNN
F 1 "TestPoint" H 5650 1600 50  0000 R CNN
F 2 "user_dc:Pad_Power" H 5425 1350 50  0001 C CNN
F 3 "~" H 5425 1350 50  0001 C CNN
	1    5225 1350
	1    0    0    -1  
$EndComp
Connection ~ 5225 1350
Wire Wire Line
	750  1550 1350 1550
Wire Wire Line
	750  1325 1350 1325
Text Label 775  1325 0    50   Italic 0
PWMA1
Text Label 775  1550 0    50   Italic 0
PWMB1
Text Label 5925 1350 0    50   Italic 0
Vc2Pos
Wire Wire Line
	5225 1350 5750 1350
Text Label 5875 3575 0    50   Italic 0
Vc2Neg
Wire Wire Line
	5225 3575 5750 3575
Wire Wire Line
	9000 2275 9450 2275
Text Label 9175 2275 0    50   Italic 0
Disable2
Wire Wire Line
	9775 3425 10475 3425
Wire Wire Line
	9850 3600 10475 3600
Text Label 10000 3600 0    50   Italic 0
PWMA2
Text Label 9975 3425 0    50   Italic 0
PWMB2
Wire Wire Line
	1725 2475 2100 2475
Text Label 1800 2475 0    50   Italic 0
Disable1
Text Label 6225 2450 0    50   Italic 0
CfNeg
Text Label 5075 2450 0    50   Italic 0
LfNeg
Text Label 3250 1750 0    50   Italic 0
VDDA1
Text Label 3150 2175 0    50   Italic 0
OutA1
Text Label 3800 2075 0    50   Italic 0
OutB1
Text Label 4700 1975 3    50   Italic 0
GateB1
Text Label 4325 3050 0    50   Italic 0
GateA1
Text Label 1550 2675 0    50   Italic 0
VDDI1
Text Label 1675 2375 0    50   Italic 0
SLDON1
Text Label 2025 2275 0    50   Italic 0
InB1
Text Label 2325 1400 3    50   Italic 0
InA1
Text Label 1925 2075 0    50   Italic 0
GNDI1
Text Label 6775 1950 0    50   Italic 0
GateB2
Text Label 6825 3050 0    50   Italic 0
GateA2
Text Label 7850 2175 0    50   Italic 0
OutB2
Text Label 7875 2275 0    50   Italic 0
VDDB2
Text Label 7750 2650 0    50   Italic 0
OutA2
Text Label 8175 2800 2    50   Italic 0
VDDA2
Text Label 9050 2075 0    50   Italic 0
VDDI2
Text Label 9000 2375 0    50   Italic 0
SLDON2
Text Label 9225 2475 0    50   Italic 0
InB2
Text Label 9225 2575 0    50   Italic 0
InA2
Text Label 2425 2575 2    60   ~ 0
NC
$Comp
L Connector:TestPoint TP17
U 1 1 5C80907B
P 10200 2075
F 0 "TP17" H 10258 2195 50  0000 L CNN
F 1 "TestPoint" H 10258 2104 50  0000 L CNN
F 2 "user_dc:Via_24milC" H 10400 2075 50  0001 C CNN
F 3 "~" H 10400 2075 50  0001 C CNN
	1    10200 2075
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP16
U 1 1 5C809101
P 10125 2675
F 0 "TP16" H 10325 2750 50  0000 R CNN
F 1 "TestPoint" H 10500 2650 50  0000 R CNN
F 2 "user_dc:Via_24milC" H 10325 2675 50  0001 C CNN
F 3 "~" H 10325 2675 50  0001 C CNN
	1    10125 2675
	1    0    0    -1  
$EndComp
Connection ~ 10200 2075
Wire Wire Line
	10200 2075 10550 2075
Connection ~ 1175 2075
Wire Wire Line
	1175 2075 1325 2075
Connection ~ 10125 2675
Wire Wire Line
	10125 2675 10600 2675
$Comp
L Connector:TestPoint TP15
U 1 1 5C809F7D
P 7700 1175
F 0 "TP15" H 7758 1295 50  0000 L CNN
F 1 "TestPoint" H 7600 1075 50  0000 L CNN
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
F 0 "TP12" V 5250 2600 50  0000 R CNN
F 1 "TestPoint" H 5475 2700 50  0000 R CNN
F 2 "user_dc:Pad_Power" H 5250 2450 50  0001 C CNN
F 3 "~" H 5250 2450 50  0001 C CNN
	1    5050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  2675 875  2675
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
F 0 "TP13" V 6425 2600 50  0000 R CNN
F 1 "TestPoint" H 6650 2700 50  0000 R CNN
F 2 "user_dc:Pad_Power" H 6425 2450 50  0001 C CNN
F 3 "~" H 6425 2450 50  0001 C CNN
	1    6225 2450
	1    0    0    -1  
$EndComp
Connection ~ 6225 2450
Wire Wire Line
	6225 2450 6475 2450
Connection ~ 875  2675
Wire Wire Line
	875  2675 1025 2675
$Comp
L Device:C_Small C13
U 1 1 5C86D4D7
P 5750 2350
F 0 "C13" H 5842 2396 50  0000 L CNN
F 1 "C" H 5842 2305 50  0000 L CNN
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
	3200 925  3200 1175
$Comp
L Connector:TestPoint TP1
U 1 1 5CA593A2
P 3200 3125
F 0 "TP1" H 3275 3500 50  0000 L CNN
F 1 "TestPoint" H 3225 3400 50  0000 L CNN
F 2 "user_dc:Via_24milC" H 3400 3125 50  0001 C CNN
F 3 "~" H 3400 3125 50  0001 C CNN
	1    3200 3125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 2450 5000 2800
Text Label 3525 3575 0    60   ~ 0
GNDA1
Wire Wire Line
	3450 2275 3450 2850
Wire Wire Line
	3450 2850 3200 2850
Wire Wire Line
	3200 2850 3200 3125
Connection ~ 3200 3125
Wire Wire Line
	3200 3125 3200 3575
Wire Wire Line
	3200 1375 3200 1750
Wire Wire Line
	3100 1750 3200 1750
Connection ~ 3200 1750
Wire Wire Line
	3200 1750 3300 1750
Wire Wire Line
	3700 1750 3700 1825
Wire Wire Line
	3700 2025 3700 2100
Wire Wire Line
	4725 2675 4725 2450
Wire Wire Line
	4725 2450 5000 2450
Connection ~ 3800 2675
Wire Wire Line
	3800 2675 4725 2675
Wire Wire Line
	3625 2675 3800 2675
Wire Wire Line
	3100 2675 3625 2675
Connection ~ 3625 2675
$Comp
L Device:CP1_Small C6
U 1 1 5C7E2F45
P 3625 2575
F 0 "C6" H 3725 2425 50  0000 R CNN
F 1 "20uF" H 3750 2350 50  0000 R CNN
F 2 "calisco-general:C_0603" H 3625 2575 50  0001 C CNN
F 3 "~" H 3625 2575 50  0001 C CNN
	1    3625 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3625 2475 3700 2475
Wire Wire Line
	3700 2400 3700 2475
Connection ~ 3700 2475
Wire Wire Line
	3700 2475 3800 2475
Wire Wire Line
	3625 2475 3100 2475
Connection ~ 3625 2475
Wire Wire Line
	3300 1750 3700 1750
Text Label 3225 2475 0    60   ~ 0
VDDB1
$Comp
L user_kf:2EDF7275K Inf1
U 1 1 5C773157
P 2450 2025
F 0 "Inf1" H 2725 2213 60  0000 C CNN
F 1 "2EDF7275K" H 2725 2107 60  0000 C CNN
F 2 "user_dc:2EDF7275K" H 2750 1225 60  0001 C CNN
F 3 "" H 2750 1225 60  0001 C CNN
	1    2450 2025
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2175 3150 2175
Wire Wire Line
	3150 2175 3150 2800
Wire Wire Line
	3150 2800 3375 2800
Wire Wire Line
	3375 2800 3375 2950
Wire Wire Line
	3100 2575 3275 2575
Wire Wire Line
	3275 2575 3275 2375
Wire Wire Line
	3275 2375 3550 2375
Wire Wire Line
	3550 2375 3550 2075
Wire Wire Line
	3550 2075 3950 2075
Wire Wire Line
	3950 1800 3950 2075
Connection ~ 3950 2075
Wire Wire Line
	3950 2075 3950 2175
Wire Wire Line
	7300 1850 7300 1975
Wire Wire Line
	7475 1975 7300 1975
Connection ~ 7300 1975
Wire Wire Line
	7300 1975 7300 2050
$Comp
L Device:CP1_Small C8
U 1 1 5C864C27
P 8000 1850
F 0 "C8" H 8200 1825 50  0000 R CNN
F 1 "1uF" H 8225 1900 50  0000 R CNN
F 2 "calisco-general:C_0402" H 8000 1850 50  0001 C CNN
F 3 "~" H 8000 1850 50  0001 C CNN
	1    8000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1950 8000 1975
Wire Wire Line
	8000 2075 8175 2075
Wire Wire Line
	7850 3075 7925 3075
Wire Wire Line
	7925 3075 7925 3000
Connection ~ 7925 3075
Wire Wire Line
	7925 3075 8000 3075
Wire Wire Line
	7700 1725 8000 1725
Connection ~ 7700 1725
Wire Wire Line
	7700 1725 7700 2275
Wire Wire Line
	8000 1725 8000 1750
Wire Wire Line
	7700 1525 7700 1725
Wire Wire Line
	8025 2650 8025 2575
Wire Wire Line
	8025 2575 8175 2575
Wire Wire Line
	7475 2650 8025 2650
Wire Wire Line
	7475 1975 7475 2650
Wire Wire Line
	7850 3275 7900 3275
Connection ~ 8000 1975
Wire Wire Line
	8000 1975 8000 2075
Wire Wire Line
	8000 1975 8750 1975
Text Label 8350 1975 0    60   ~ 0
Vc2Neg
Wire Wire Line
	7875 2475 8075 2475
Wire Wire Line
	6475 2100 6475 2425
Wire Wire Line
	7350 2950 7350 2175
Wire Wire Line
	7350 2175 8175 2175
Connection ~ 7350 2950
Wire Wire Line
	7350 2950 7350 3150
Wire Wire Line
	8075 2475 8075 3400
Wire Wire Line
	8075 3400 7900 3400
Wire Wire Line
	7900 3400 7900 3275
Connection ~ 8075 2475
Wire Wire Line
	8075 2475 8175 2475
Connection ~ 7900 3275
Wire Wire Line
	7900 3275 8000 3275
Wire Wire Line
	7875 2475 7875 2425
Wire Wire Line
	7875 2425 6475 2425
Connection ~ 6475 2425
Wire Wire Line
	6475 2425 6475 2450
Wire Wire Line
	7700 3000 7925 3000
Wire Wire Line
	7700 2375 7700 2275
Connection ~ 7700 2275
Wire Wire Line
	7925 3000 8175 3000
Wire Wire Line
	8175 2675 8175 3000
Connection ~ 7925 3000
$EndSCHEMATC
