EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 8
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
L user_tm:HSEC8-160-1-L-DV-A-BL J4
U 1 1 5FFDAFDB
P 6225 2350
AR Path="/5FFDAFDB" Ref="J4"  Part="1" 
AR Path="/5FFD522A/5FFDAFDB" Ref="J4"  Part="1" 
F 0 "J4" H 6225 4067 50  0000 C CNN
F 1 "HSEC8-160-1-L-DV-A-BL" H 6225 3976 50  0000 C CNN
F 2 "user_dc:SAMTEC_HSEC8-160-01-L-DV-A-BL" H 6175 2600 50  0001 C CNN
F 3 "~" H 6175 2600 50  0001 C CNN
	1    6225 2350
	1    0    0    -1  
$EndComp
$Comp
L user_tm:HSEC8-160-1-L-DV-A-BL J4
U 2 1 5FFDB297
P 6225 5525
AR Path="/5FFDB297" Ref="J4"  Part="2" 
AR Path="/5FFD522A/5FFDB297" Ref="J4"  Part="2" 
F 0 "J4" H 5975 3925 50  0000 C CNN
F 1 "HSEC8-160-1-L-DV-A-BL" H 5950 4025 50  0000 C CNN
F 2 "user_dc:SAMTEC_HSEC8-160-01-L-DV-A-BL" H 6175 5775 50  0001 C CNN
F 3 "~" H 6175 5775 50  0001 C CNN
	2    6225 5525
	1    0    0    -1  
$EndComp
Text HLabel 1100 1450 0    60   Input ~ 0
GND_Logic
Text Label 2375 1450 0    60   ~ 0
GND_Logic
Text Label 5325 1150 0    60   ~ 0
GND_Logic
Wire Wire Line
	5325 1150 5975 1150
Text Label 5325 1750 0    60   ~ 0
GND_Logic
Wire Wire Line
	5325 1750 5975 1750
Text Label 5325 2550 0    60   ~ 0
GND_Logic
Wire Wire Line
	5325 2550 5975 2550
Text Label 5325 3150 0    60   ~ 0
GND_Logic
Wire Wire Line
	5325 3150 5975 3150
Text Label 5325 4175 0    60   ~ 0
GND_Logic
Wire Wire Line
	5325 4175 5975 4175
Text Label 5325 5075 0    60   ~ 0
GND_Logic
Wire Wire Line
	5325 5075 5975 5075
Text Label 5325 5775 0    60   ~ 0
GND_Logic
Wire Wire Line
	5325 5775 5975 5775
Text Label 5325 6475 0    60   ~ 0
GND_Logic
Wire Wire Line
	5325 6475 5975 6475
$Comp
L Connector_Generic:Conn_02x30_Odd_Even J5
U 1 1 5FFF351C
P 9825 2375
F 0 "J5" H 9875 3992 50  0000 C CNN
F 1 "HSEC8-130-01-L-DV-A" H 9875 3901 50  0000 C CNN
F 2 "user_kf:SKT-60_flipped" H 9825 2375 50  0001 C CNN
F 3 "~" H 9825 2375 50  0001 C CNN
	1    9825 2375
	1    0    0    -1  
$EndComp
Text Label 8975 1675 0    60   ~ 0
GND_Logic
Wire Wire Line
	8975 1675 9625 1675
Text Label 8975 2775 0    60   ~ 0
GND_Logic
Wire Wire Line
	8975 2775 9625 2775
Text Label 8975 3875 0    60   ~ 0
GND_Logic
Wire Wire Line
	8975 3875 9625 3875
Text Label 7125 1250 2    60   ~ 0
GND_Logic
Wire Wire Line
	7125 1250 6475 1250
Text Label 7125 1850 2    60   ~ 0
GND_Logic
Wire Wire Line
	7125 1850 6475 1850
Text Label 7125 2650 2    60   ~ 0
GND_Logic
Wire Wire Line
	7125 2650 6475 2650
Text Label 7125 3050 2    60   ~ 0
GND_Logic
Wire Wire Line
	7125 3050 6475 3050
NoConn ~ 5975 1450
NoConn ~ 5975 2250
NoConn ~ 5975 2850
NoConn ~ 5975 2950
NoConn ~ 6475 1550
NoConn ~ 6475 2350
NoConn ~ 6475 2950
NoConn ~ 6475 4175
NoConn ~ 10125 1675
NoConn ~ 10125 3775
NoConn ~ 9625 3775
NoConn ~ 9625 3675
NoConn ~ 9625 3575
NoConn ~ 9625 3475
NoConn ~ 10125 3675
NoConn ~ 10125 3575
NoConn ~ 10125 3475
NoConn ~ 5975 6575
NoConn ~ 5975 6775
NoConn ~ 5975 6875
NoConn ~ 6475 6575
NoConn ~ 6475 6675
NoConn ~ 6475 6775
Text Label 6800 5075 2    60   ~ 0
5V
Text Label 6800 5775 2    60   ~ 0
5V
Wire Wire Line
	6800 5775 6475 5775
Text Label 6800 6475 2    60   ~ 0
5V
Wire Wire Line
	6800 6475 6475 6475
Text Label 10775 2775 2    60   ~ 0
5V
Wire Wire Line
	10775 2775 10125 2775
Text Label 10775 3875 2    60   ~ 0
5V
Wire Wire Line
	10775 3875 10125 3875
Text Label 5325 3250 0    60   ~ 0
PWM2A
Wire Wire Line
	5325 3250 5975 3250
Text Label 5325 3350 0    60   ~ 0
PWM2B
Wire Wire Line
	5325 3350 5975 3350
Text Label 5325 3450 0    60   ~ 0
PWM1A
Wire Wire Line
	5325 3450 5975 3450
Text Label 5325 3550 0    60   ~ 0
PWM1B
Wire Wire Line
	5325 3550 5975 3550
Text Label 7125 3350 2    60   ~ 0
PWM3B
Wire Wire Line
	7125 3350 6475 3350
Text Label 7125 3250 2    60   ~ 0
PWM3A
Wire Wire Line
	7125 3250 6475 3250
Text Label 1100 2025 0    60   ~ 0
PWM1B
Wire Wire Line
	1100 2025 1500 2025
Text Label 2175 2025 0    60   ~ 0
PWM2B
Wire Wire Line
	2175 2025 2575 2025
Text HLabel 1750 2025 2    60   Output ~ 0
~INA
Text HLabel 2825 2025 2    60   Output ~ 0
~INB
Text Label 1100 2575 0    60   ~ 0
PWM3A
Wire Wire Line
	1100 2575 1525 2575
Text HLabel 1750 2575 2    60   Output ~ 0
INCI
Text Label 5325 1250 0    60   ~ 0
DACOUT
Wire Wire Line
	5325 1250 5975 1250
Text Label 5325 2350 0    60   ~ 0
Vc2
Wire Wire Line
	5325 2350 5975 2350
Text Label 7100 1350 2    60   ~ 0
Vc1
Wire Wire Line
	7125 2250 6475 2250
Text HLabel 1300 2975 0    60   Input ~ 0
VDC_SENSE
$Comp
L Device:R_Small R?
U 1 1 6004C665
P 1675 2975
AR Path="/6004C665" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/6004C665" Ref="R?"  Part="1" 
AR Path="/5FFD522A/6004C665" Ref="R28"  Part="1" 
F 0 "R28" H 1734 3021 50  0000 L CNN
F 1 "150" H 1734 2930 50  0000 L CNN
F 2 "calisco-general:R_0402" H 1675 2975 50  0001 C CNN
F 3 "~" H 1675 2975 50  0001 C CNN
	1    1675 2975
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6004FC68
P 1875 3200
AR Path="/5C7A0793/6004FC68" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/6004FC68" Ref="C?"  Part="1" 
AR Path="/5FFD522A/6004FC68" Ref="C57"  Part="1" 
F 0 "C57" H 1967 3246 50  0000 L CNN
F 1 "1uF" H 1967 3155 50  0000 L CNN
F 2 "calisco-general:C_0603" H 1875 3200 50  0001 C CNN
F 3 "~" H 1875 3200 50  0001 C CNN
	1    1875 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 3400 1875 3300
Wire Wire Line
	1875 2975 1775 2975
Wire Wire Line
	1575 2975 1300 2975
Wire Wire Line
	1875 2975 1875 3100
Text Label 1875 3400 2    60   ~ 0
GND_Logic
Text HLabel 1300 3775 0    60   Input ~ 0
VC1_SENSE
$Comp
L Device:R_Small R?
U 1 1 6005745A
P 1675 3775
AR Path="/6005745A" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/6005745A" Ref="R?"  Part="1" 
AR Path="/5FFD522A/6005745A" Ref="R29"  Part="1" 
F 0 "R29" H 1734 3821 50  0000 L CNN
F 1 "150" H 1734 3730 50  0000 L CNN
F 2 "calisco-general:R_0402" H 1675 3775 50  0001 C CNN
F 3 "~" H 1675 3775 50  0001 C CNN
	1    1675 3775
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60057461
P 1875 4000
AR Path="/5C7A0793/60057461" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/60057461" Ref="C?"  Part="1" 
AR Path="/5FFD522A/60057461" Ref="C58"  Part="1" 
F 0 "C58" H 1967 4046 50  0000 L CNN
F 1 "1uF" H 1967 3955 50  0000 L CNN
F 2 "calisco-general:C_0603" H 1875 4000 50  0001 C CNN
F 3 "~" H 1875 4000 50  0001 C CNN
	1    1875 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 4200 1875 4100
Wire Wire Line
	1875 3775 1775 3775
Wire Wire Line
	1575 3775 1300 3775
Wire Wire Line
	1875 3775 1875 3900
Text Label 1875 4200 2    60   ~ 0
GND_Logic
Text HLabel 1300 4550 0    60   Input ~ 0
VC2_SENSE
$Comp
L Device:R_Small R?
U 1 1 60058503
P 1675 4550
AR Path="/60058503" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/60058503" Ref="R?"  Part="1" 
AR Path="/5FFD522A/60058503" Ref="R30"  Part="1" 
F 0 "R30" H 1734 4596 50  0000 L CNN
F 1 "150" H 1734 4505 50  0000 L CNN
F 2 "calisco-general:R_0402" H 1675 4550 50  0001 C CNN
F 3 "~" H 1675 4550 50  0001 C CNN
	1    1675 4550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6005850A
P 1875 4775
AR Path="/5C7A0793/6005850A" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/6005850A" Ref="C?"  Part="1" 
AR Path="/5FFD522A/6005850A" Ref="C59"  Part="1" 
F 0 "C59" H 1967 4821 50  0000 L CNN
F 1 "1uF" H 1967 4730 50  0000 L CNN
F 2 "calisco-general:C_0603" H 1875 4775 50  0001 C CNN
F 3 "~" H 1875 4775 50  0001 C CNN
	1    1875 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 4975 1875 4875
Wire Wire Line
	1875 4550 1775 4550
Wire Wire Line
	1575 4550 1300 4550
Wire Wire Line
	1875 4550 1875 4675
Text Label 1875 4975 2    60   ~ 0
GND_Logic
Text Label 2525 2975 2    60   ~ 0
Vdc
Text Label 2525 3775 2    60   ~ 0
Vc1
Wire Wire Line
	2525 3775 1875 3775
Text Label 2525 4550 2    60   ~ 0
Vc2
Wire Wire Line
	2525 4550 1875 4550
Text HLabel 1100 900  0    60   Input ~ 0
VDD_Logic
$Comp
L Regulator_Switching:TPS562200 U15
U 1 1 6005433B
P 2850 1000
AR Path="/6005433B" Ref="U15"  Part="1" 
AR Path="/5FFD522A/6005433B" Ref="U15"  Part="1" 
F 0 "U15" H 2850 1367 50  0000 C CNN
F 1 "TPS562200" H 2850 1276 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2900 750 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps563200.pdf" H 2850 1000 50  0001 C CNN
	1    2850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1300 2850 1450
$Comp
L Device:C_Small C?
U 1 1 6005CBB5
P 1225 1100
AR Path="/5C7A0793/6005CBB5" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/6005CBB5" Ref="C?"  Part="1" 
AR Path="/5FFD522A/6005CBB5" Ref="C54"  Part="1" 
F 0 "C54" H 1025 1150 50  0000 L CNN
F 1 "10uF" H 925 1050 50  0000 L CNN
F 2 "calisco-general:C_1206" H 1225 1100 50  0001 C CNN
F 3 "~" H 1225 1100 50  0001 C CNN
	1    1225 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6005CC63
P 1625 1300
AR Path="/5C7A0793/6005CC63" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/6005CC63" Ref="C?"  Part="1" 
AR Path="/5FFD522A/6005CC63" Ref="C56"  Part="1" 
F 0 "C56" H 1400 1350 50  0000 L CNN
F 1 "10uF" H 1325 1250 50  0000 L CNN
F 2 "calisco-general:C_1206" H 1625 1300 50  0001 C CNN
F 3 "~" H 1625 1300 50  0001 C CNN
	1    1625 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6005CD89
P 2000 1075
AR Path="/5C7A0793/6005CD89" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/6005CD89" Ref="C?"  Part="1" 
AR Path="/5FFD522A/6005CD89" Ref="C53"  Part="1" 
F 0 "C53" H 1775 1125 50  0000 L CNN
F 1 "0.1uF" H 1700 1025 50  0000 L CNN
F 2 "calisco-general:C_0603" H 2000 1075 50  0001 C CNN
F 3 "~" H 2000 1075 50  0001 C CNN
	1    2000 1075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1450 1225 1450
Wire Wire Line
	1100 900  1225 900 
Wire Wire Line
	1225 1000 1225 900 
Connection ~ 1225 900 
Wire Wire Line
	1225 900  1625 900 
Wire Wire Line
	1625 900  1625 1200
Connection ~ 1625 900 
Wire Wire Line
	2000 900  2000 975 
Wire Wire Line
	1625 900  2000 900 
Wire Wire Line
	1225 1200 1225 1450
Connection ~ 1225 1450
Wire Wire Line
	1225 1450 1625 1450
Wire Wire Line
	1625 1400 1625 1450
Connection ~ 1625 1450
Wire Wire Line
	1625 1450 2000 1450
Wire Wire Line
	2000 1175 2000 1450
Connection ~ 2000 1450
Wire Wire Line
	2000 1450 2850 1450
$Comp
L Device:R_Small R?
U 1 1 6006E31B
P 2200 1000
AR Path="/6006E31B" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/6006E31B" Ref="R?"  Part="1" 
AR Path="/5FFD522A/6006E31B" Ref="R26"  Part="1" 
F 0 "R26" H 2259 1046 50  0000 L CNN
F 1 "10k" H 2259 955 50  0000 L CNN
F 2 "calisco-general:R_0402" H 2200 1000 50  0001 C CNN
F 3 "~" H 2200 1000 50  0001 C CNN
	1    2200 1000
	1    0    0    1   
$EndComp
Wire Wire Line
	2200 900  2000 900 
Connection ~ 2000 900 
Wire Wire Line
	2450 900  2200 900 
Connection ~ 2200 900 
Wire Wire Line
	2200 1100 2450 1100
$Comp
L Device:L_Small L10
U 1 1 60073FB6
P 3650 800
F 0 "L10" V 3835 800 50  0000 C CNN
F 1 "4.7uH" V 3744 800 50  0000 C CNN
F 2 "user_dc:XEL4030" H 3650 800 50  0001 C CNN
F 3 "~" H 3650 800 50  0001 C CNN
	1    3650 800 
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60076124
P 3475 900
AR Path="/5C7A0793/60076124" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/60076124" Ref="C?"  Part="1" 
AR Path="/5FFD522A/60076124" Ref="C50"  Part="1" 
F 0 "C50" H 3575 925 50  0000 L CNN
F 1 "0.1uF" H 3575 825 50  0000 L CNN
F 2 "calisco-general:C_0603" H 3475 900 50  0001 C CNN
F 3 "~" H 3475 900 50  0001 C CNN
	1    3475 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 900  3400 900 
Wire Wire Line
	3400 900  3400 800 
Wire Wire Line
	3400 800  3475 800 
Wire Wire Line
	3250 1000 3475 1000
$Comp
L Device:R_Small R?
U 1 1 60080D29
P 3875 950
AR Path="/60080D29" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/60080D29" Ref="R?"  Part="1" 
AR Path="/5FFD522A/60080D29" Ref="R25"  Part="1" 
F 0 "R25" H 3934 996 50  0000 L CNN
F 1 "54.9k" H 3934 905 50  0000 L CNN
F 2 "calisco-general:R_0402" H 3875 950 50  0001 C CNN
F 3 "~" H 3875 950 50  0001 C CNN
	1    3875 950 
	1    0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6008C964
P 3875 1250
AR Path="/6008C964" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/6008C964" Ref="R?"  Part="1" 
AR Path="/5FFD522A/6008C964" Ref="R27"  Part="1" 
F 0 "R27" H 3934 1296 50  0000 L CNN
F 1 "10k" H 3934 1205 50  0000 L CNN
F 2 "calisco-general:R_0402" H 3875 1250 50  0001 C CNN
F 3 "~" H 3875 1250 50  0001 C CNN
	1    3875 1250
	1    0    0    1   
$EndComp
Connection ~ 2850 1450
Wire Wire Line
	6800 5075 6475 5075
$Comp
L Device:C_Small C?
U 1 1 6009B880
P 4200 950
AR Path="/5C7A0793/6009B880" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/6009B880" Ref="C?"  Part="1" 
AR Path="/5FFD522A/6009B880" Ref="C51"  Part="1" 
F 0 "C51" H 4300 975 50  0000 L CNN
F 1 "0.1uF" H 4300 900 50  0000 L CNN
F 2 "calisco-general:C_0603" H 4200 950 50  0001 C CNN
F 3 "~" H 4200 950 50  0001 C CNN
	1    4200 950 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 600A6184
P 4525 1225
AR Path="/5C7A0793/600A6184" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/600A6184" Ref="C?"  Part="1" 
AR Path="/5FFD522A/600A6184" Ref="C55"  Part="1" 
F 0 "C55" H 4625 1250 50  0000 L CNN
F 1 "22uF" H 4625 1175 50  0000 L CNN
F 2 "calisco-general:C_1206" H 4525 1225 50  0001 C CNN
F 3 "~" H 4525 1225 50  0001 C CNN
	1    4525 1225
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 600B4900
P 4825 950
AR Path="/5C7A0793/600B4900" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/600B4900" Ref="C?"  Part="1" 
AR Path="/5FFD522A/600B4900" Ref="C52"  Part="1" 
F 0 "C52" H 4925 975 50  0000 L CNN
F 1 "22uF" H 4925 900 50  0000 L CNN
F 2 "calisco-general:C_1206" H 4825 950 50  0001 C CNN
F 3 "~" H 4825 950 50  0001 C CNN
	1    4825 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1050 4200 1450
Wire Wire Line
	4825 1450 4825 1050
Wire Wire Line
	4200 1450 4525 1450
Connection ~ 4525 1450
Wire Wire Line
	4525 1450 4825 1450
Wire Wire Line
	4825 850  4825 800 
Wire Wire Line
	4200 800  4525 800 
Wire Wire Line
	4525 1325 4525 1450
Wire Wire Line
	4525 1125 4525 800 
Connection ~ 4525 800 
Wire Wire Line
	4525 800  4825 800 
Wire Wire Line
	3475 800  3550 800 
Connection ~ 3475 800 
Wire Wire Line
	3750 800  3875 800 
Wire Wire Line
	3250 1100 3875 1100
Wire Wire Line
	3875 1100 3875 1050
Wire Wire Line
	3875 1150 3875 1100
Connection ~ 3875 1100
Wire Wire Line
	3875 1350 3875 1450
Wire Wire Line
	2850 1450 3875 1450
Wire Wire Line
	3875 850  3875 800 
Wire Wire Line
	3875 800  4200 800 
Connection ~ 3875 800 
Connection ~ 4200 800 
Wire Wire Line
	4200 1450 3875 1450
Connection ~ 4200 1450
Connection ~ 3875 1450
Wire Wire Line
	4200 800  4200 850 
Wire Wire Line
	7100 1350 6475 1350
Text Label 6975 2250 0    60   ~ 0
Vdc
$Comp
L Connector:TestPoint TP5
U 1 1 5FFEEDE7
P 1875 2975
F 0 "TP5" H 1933 3095 50  0000 L CNN
F 1 "TestPoint" H 1933 3004 50  0000 L CNN
F 2 "user_kf:0603 TP" H 2075 2975 50  0001 C CNN
F 3 "~" H 2075 2975 50  0001 C CNN
	1    1875 2975
	1    0    0    -1  
$EndComp
Connection ~ 1875 2975
$Comp
L Connector:TestPoint TP6
U 1 1 5FFEEF93
P 1875 3775
F 0 "TP6" H 1933 3895 50  0000 L CNN
F 1 "TestPoint" H 1933 3804 50  0000 L CNN
F 2 "user_kf:0603 TP" H 2075 3775 50  0001 C CNN
F 3 "~" H 2075 3775 50  0001 C CNN
	1    1875 3775
	1    0    0    -1  
$EndComp
Connection ~ 1875 3775
$Comp
L Connector:TestPoint TP7
U 1 1 5FFEEFEF
P 1875 4550
F 0 "TP7" H 1933 4670 50  0000 L CNN
F 1 "TestPoint" H 1933 4579 50  0000 L CNN
F 2 "user_kf:0603 TP" H 2075 4550 50  0001 C CNN
F 3 "~" H 2075 4550 50  0001 C CNN
	1    1875 4550
	1    0    0    -1  
$EndComp
Connection ~ 1875 4550
Text Label 1150 5350 0    60   ~ 0
DACOUT
Wire Wire Line
	1875 2975 2525 2975
$Comp
L Connector:TestPoint TP8
U 1 1 5FFF2676
P 1875 5350
F 0 "TP8" H 1933 5470 50  0000 L CNN
F 1 "TestPoint" H 1933 5379 50  0000 L CNN
F 2 "user_kf:0603 TP" H 2075 5350 50  0001 C CNN
F 3 "~" H 2075 5350 50  0001 C CNN
	1    1875 5350
	1    0    0    -1  
$EndComp
NoConn ~ 5975 850 
NoConn ~ 5975 950 
NoConn ~ 5975 1050
NoConn ~ 6475 1050
NoConn ~ 6475 1150
NoConn ~ 6475 950 
NoConn ~ 6475 850 
NoConn ~ 6475 1450
NoConn ~ 5975 1350
NoConn ~ 5975 1550
NoConn ~ 6475 1650
NoConn ~ 6475 1750
NoConn ~ 5975 1850
NoConn ~ 5975 1950
NoConn ~ 5975 2050
NoConn ~ 5975 2150
NoConn ~ 6475 2050
NoConn ~ 6475 1950
NoConn ~ 6475 2150
NoConn ~ 5975 2450
NoConn ~ 6475 2450
NoConn ~ 6475 2550
NoConn ~ 5975 2650
NoConn ~ 5975 2750
NoConn ~ 6475 2750
NoConn ~ 6475 2850
NoConn ~ 5975 3050
NoConn ~ 5975 3650
NoConn ~ 5975 3750
NoConn ~ 5975 3850
NoConn ~ 5975 3950
NoConn ~ 6475 3450
NoConn ~ 6475 3550
NoConn ~ 6475 3650
NoConn ~ 6475 3750
NoConn ~ 6475 3850
NoConn ~ 6475 3950
NoConn ~ 6475 4275
NoConn ~ 6475 4375
NoConn ~ 6475 4475
NoConn ~ 6475 4575
NoConn ~ 6475 4675
NoConn ~ 6475 4775
NoConn ~ 5975 4275
NoConn ~ 5975 4375
NoConn ~ 5975 4475
NoConn ~ 5975 4575
NoConn ~ 5975 4675
NoConn ~ 5975 4775
NoConn ~ 5975 4875
NoConn ~ 5975 4975
NoConn ~ 6475 4975
NoConn ~ 6475 4875
NoConn ~ 5975 5675
NoConn ~ 5975 5575
NoConn ~ 5975 5475
NoConn ~ 5975 5375
NoConn ~ 5975 5275
NoConn ~ 5975 5175
NoConn ~ 6475 5175
NoConn ~ 6475 5275
NoConn ~ 6475 5375
NoConn ~ 6475 5475
NoConn ~ 6475 5575
NoConn ~ 6475 5675
NoConn ~ 6475 5875
NoConn ~ 5975 5875
NoConn ~ 5975 5975
NoConn ~ 5975 6075
NoConn ~ 5975 6175
NoConn ~ 5975 6275
NoConn ~ 5975 6375
NoConn ~ 6475 6375
NoConn ~ 6475 6275
NoConn ~ 6475 6175
NoConn ~ 6475 6075
NoConn ~ 6475 5975
NoConn ~ 5975 6675
NoConn ~ 6475 6875
NoConn ~ 9625 975 
NoConn ~ 9625 1075
NoConn ~ 9625 1175
NoConn ~ 9625 1275
NoConn ~ 9625 1375
NoConn ~ 9625 1475
NoConn ~ 9625 1575
NoConn ~ 9625 1775
NoConn ~ 9625 1875
NoConn ~ 9625 1975
NoConn ~ 9625 2075
NoConn ~ 9625 2175
NoConn ~ 9625 2275
NoConn ~ 9625 2375
NoConn ~ 9625 2475
NoConn ~ 9625 2575
NoConn ~ 9625 2675
NoConn ~ 9625 2875
NoConn ~ 9625 3375
NoConn ~ 9625 3275
NoConn ~ 9625 3175
NoConn ~ 9625 3075
NoConn ~ 9625 2975
NoConn ~ 10125 2875
NoConn ~ 10125 2975
NoConn ~ 10125 3075
NoConn ~ 10125 3175
NoConn ~ 10125 3275
NoConn ~ 10125 3375
NoConn ~ 10125 1775
NoConn ~ 10125 1875
NoConn ~ 10125 1975
NoConn ~ 10125 2075
NoConn ~ 10125 2175
NoConn ~ 10125 2275
NoConn ~ 10125 2375
NoConn ~ 10125 2475
NoConn ~ 10125 2575
NoConn ~ 10125 2675
NoConn ~ 10125 1075
NoConn ~ 10125 1175
NoConn ~ 10125 1275
NoConn ~ 10125 1375
NoConn ~ 10125 1475
NoConn ~ 10125 1575
NoConn ~ 5975 3250
NoConn ~ 5975 3450
NoConn ~ 6475 3150
NoConn ~ 6475 3350
$Comp
L Device:C_Small C?
U 1 1 601FD4CA
P 1875 5575
AR Path="/5C7A0793/601FD4CA" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/601FD4CA" Ref="C?"  Part="1" 
AR Path="/5FFD522A/601FD4CA" Ref="C67"  Part="1" 
F 0 "C67" H 1967 5621 50  0000 L CNN
F 1 "1uF" H 1967 5530 50  0000 L CNN
F 2 "calisco-general:C_0603" H 1875 5575 50  0001 C CNN
F 3 "~" H 1875 5575 50  0001 C CNN
	1    1875 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 5775 1875 5675
Wire Wire Line
	1875 5350 1875 5475
Text Label 1875 5775 2    60   ~ 0
GND_Logic
Wire Wire Line
	2525 5350 1875 5350
$Comp
L Device:R_Small R?
U 1 1 60203DEE
P 1625 5350
AR Path="/60203DEE" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/60203DEE" Ref="R?"  Part="1" 
AR Path="/5FFD522A/60203DEE" Ref="R31"  Part="1" 
F 0 "R31" H 1684 5396 50  0000 L CNN
F 1 "150" H 1684 5305 50  0000 L CNN
F 2 "calisco-general:R_0402" H 1625 5350 50  0001 C CNN
F 3 "~" H 1625 5350 50  0001 C CNN
	1    1625 5350
	0    -1   -1   0   
$EndComp
Connection ~ 1875 5350
Wire Wire Line
	1725 5350 1875 5350
Text Label 2325 5350 0    60   ~ 0
DACOUT_probe
Wire Wire Line
	1150 5350 1525 5350
NoConn ~ 10125 975 
Text Label 3325 900  1    60   ~ 0
Buck_Sw
Text Label 3375 1100 0    60   ~ 0
Buck_FB
Text Label 3300 1000 3    60   ~ 0
Buck_Bst
Text Label 4200 800  0    60   ~ 0
5V
Text Label 2300 1100 3    60   ~ 0
En_Buck
Text HLabel 1425 6275 0    60   Input ~ 0
VC2_GND_SENSE
$Comp
L Device:R_Small R?
U 1 1 604208A9
P 1675 6275
AR Path="/604208A9" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/604208A9" Ref="R?"  Part="1" 
AR Path="/5FFD522A/604208A9" Ref="R38"  Part="1" 
F 0 "R38" H 1734 6321 50  0000 L CNN
F 1 "150" H 1734 6230 50  0000 L CNN
F 2 "calisco-general:R_0402" H 1675 6275 50  0001 C CNN
F 3 "~" H 1675 6275 50  0001 C CNN
	1    1675 6275
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 604208AF
P 1875 6500
AR Path="/5C7A0793/604208AF" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/604208AF" Ref="C?"  Part="1" 
AR Path="/5FFD522A/604208AF" Ref="C75"  Part="1" 
F 0 "C75" H 1967 6546 50  0000 L CNN
F 1 "1uF" H 1967 6455 50  0000 L CNN
F 2 "calisco-general:C_0603" H 1875 6500 50  0001 C CNN
F 3 "~" H 1875 6500 50  0001 C CNN
	1    1875 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 6700 1875 6600
Wire Wire Line
	1875 6275 1775 6275
Wire Wire Line
	1875 6275 1875 6400
Text Label 1875 6700 2    60   ~ 0
GND_Logic
Text Label 2325 6275 0    60   ~ 0
Vc2_GND
Wire Wire Line
	2525 6275 1875 6275
$Comp
L Connector:TestPoint TP9
U 1 1 604208BC
P 1875 6275
F 0 "TP9" H 1933 6395 50  0000 L CNN
F 1 "TestPoint" H 1933 6304 50  0000 L CNN
F 2 "user_kf:0603 TP" H 2075 6275 50  0001 C CNN
F 3 "~" H 2075 6275 50  0001 C CNN
	1    1875 6275
	1    0    0    -1  
$EndComp
Connection ~ 1875 6275
Wire Wire Line
	1425 6275 1575 6275
Text Label 5325 1650 0    60   ~ 0
Vc2_GND
Wire Wire Line
	5325 1650 5975 1650
$Comp
L Connector:TestPoint TP19
U 1 1 60391E24
P 1500 2025
F 0 "TP19" H 1558 2145 50  0000 L CNN
F 1 "TestPoint" H 1525 2250 50  0000 L CNN
F 2 "user_kf:0603 TP" H 1700 2025 50  0001 C CNN
F 3 "~" H 1700 2025 50  0001 C CNN
	1    1500 2025
	1    0    0    -1  
$EndComp
Connection ~ 1500 2025
Wire Wire Line
	1500 2025 1750 2025
$Comp
L Connector:TestPoint TP25
U 1 1 6039CA92
P 1525 2575
F 0 "TP25" H 1583 2695 50  0000 L CNN
F 1 "TestPoint" H 1550 2800 50  0000 L CNN
F 2 "user_kf:0603 TP" H 1725 2575 50  0001 C CNN
F 3 "~" H 1725 2575 50  0001 C CNN
	1    1525 2575
	1    0    0    -1  
$EndComp
Connection ~ 1525 2575
Wire Wire Line
	1525 2575 1750 2575
$Comp
L Connector:TestPoint TP21
U 1 1 603A08E7
P 2575 2025
F 0 "TP21" H 2633 2145 50  0000 L CNN
F 1 "TestPoint" H 2600 2250 50  0000 L CNN
F 2 "user_kf:0603 TP" H 2775 2025 50  0001 C CNN
F 3 "~" H 2775 2025 50  0001 C CNN
	1    2575 2025
	1    0    0    -1  
$EndComp
Connection ~ 2575 2025
Wire Wire Line
	2575 2025 2825 2025
$EndSCHEMATC
