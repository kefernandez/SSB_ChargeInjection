EESchema Schematic File Version 4
LIBS:UnfolderBuffer-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
U 1 1 5DEEDE22
P 6600 1900
AR Path="/5DEEDE22" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5DEEDE22" Ref="R46"  Part="1" 
F 0 "R46" H 6659 1946 50  0000 L CNN
F 1 "33k" H 6659 1855 50  0000 L CNN
F 2 "calisco-general:R_0603" H 6600 1900 50  0001 C CNN
F 3 "~" H 6600 1900 50  0001 C CNN
	1    6600 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5DEEDE28
P 6600 2400
AR Path="/5DEEDE28" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5DEEDE28" Ref="R47"  Part="1" 
F 0 "R47" H 6659 2446 50  0000 L CNN
F 1 "2k" H 6659 2355 50  0000 L CNN
F 2 "calisco-general:R_0603" H 6600 2400 50  0001 C CNN
F 3 "~" H 6600 2400 50  0001 C CNN
	1    6600 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5DEEDE2E
P 6600 2900
AR Path="/5DEEDE2E" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5DEEDE2E" Ref="R48"  Part="1" 
F 0 "R48" H 6659 2946 50  0000 L CNN
F 1 "33k" H 6659 2855 50  0000 L CNN
F 2 "calisco-general:R_0603" H 6600 2900 50  0001 C CNN
F 3 "~" H 6600 2900 50  0001 C CNN
	1    6600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1700 6600 1800
Wire Wire Line
	6600 3100 6600 3000
Wire Wire Line
	6600 2600 6600 2550
Wire Wire Line
	6600 2300 6600 2250
Wire Wire Line
	6600 2250 6950 2250
Connection ~ 6600 2250
Wire Wire Line
	6600 2550 6950 2550
Connection ~ 6600 2550
Wire Wire Line
	6600 2550 6600 2500
$Comp
L calisco_discretes:LT1990 U16
U 1 1 5DEEDE3F
P 7400 2400
F 0 "U16" H 7891 2453 60  0000 L CNN
F 1 "LT1990" H 7891 2347 60  0000 L CNN
F 2 "calisco-general:SOIC-8" H 7400 2400 60  0001 C CNN
F 3 "" H 7400 2400 60  0000 C CNN
	1    7400 2400
	1    0    0    -1  
$EndComp
$Comp
L calisco_discretes:LT1990 U16
U 2 1 5DEEDE45
P 4850 2975
F 0 "U16" H 4673 3085 60  0000 R CNN
F 1 "LT1990" H 4673 2979 60  0000 R CNN
F 2 "calisco-general:SOIC-8" H 4850 2975 60  0001 C CNN
F 3 "" H 4850 2975 60  0000 C CNN
	2    4850 2975
	1    0    0    -1  
$EndComp
NoConn ~ 5150 2875
NoConn ~ 5150 3075
Wire Wire Line
	6950 2250 6950 2300
Wire Wire Line
	6950 2300 7050 2300
Wire Wire Line
	6950 2550 6950 2500
Wire Wire Line
	6950 2500 7050 2500
Wire Wire Line
	7400 1825 7400 1875
$Comp
L Device:C_Small C?
U 1 1 5DEEDE54
P 6300 2400
AR Path="/5DEEDE54" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5DEEDE54" Ref="C140"  Part="1" 
F 0 "C140" H 6310 2470 50  0000 L CNN
F 1 "100pF" H 6310 2320 50  0000 L CNN
F 2 "calisco-general:C_0603" H 6300 2400 50  0001 C CNN
F 3 "" H 6300 2400 50  0000 C CNN
	1    6300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2300 6300 2250
Wire Wire Line
	6300 2250 6600 2250
Wire Wire Line
	6300 2500 6300 2550
Wire Wire Line
	6300 2550 6600 2550
$Comp
L Reference_Voltage:REF3012 U?
U 1 1 5DEEDE71
P 3675 2625
AR Path="/5DEEDE71" Ref="U?"  Part="1" 
AR Path="/5DEEB9C4/5DEEDE71" Ref="U20"  Part="1" 
F 0 "U20" H 3750 2875 50  0000 R CNN
F 1 "REF3012" H 3925 2375 50  0000 R CIN
F 2 "calisco-general:SOT-23" H 3675 2175 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ref3033.pdf" H 3775 2275 50  0001 C CIN
	1    3675 2625
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DEEDE77
P 3250 2625
AR Path="/5DEEDE77" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5DEEDE77" Ref="C79"  Part="1" 
F 0 "C79" H 3342 2671 50  0000 L CNN
F 1 "1uF" H 3342 2580 50  0000 L CNN
F 2 "calisco-general:C_0603" H 3250 2625 50  0001 C CNN
F 3 "~" H 3250 2625 50  0001 C CNN
	1    3250 2625
	1    0    0    -1  
$EndComp
Wire Wire Line
	3575 2275 3250 2275
Wire Wire Line
	3250 2275 3250 2525
Wire Wire Line
	3250 2725 3250 2975
Wire Wire Line
	3250 2975 3575 2975
Wire Wire Line
	3575 2975 3575 2925
Wire Wire Line
	3575 2275 3575 2325
$Comp
L Device:C_Small C?
U 1 1 5DEEDE83
P 4025 2775
AR Path="/5DEEDE83" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5DEEDE83" Ref="C80"  Part="1" 
F 0 "C80" H 4117 2821 50  0000 L CNN
F 1 "1uF" H 4117 2730 50  0000 L CNN
F 2 "calisco-general:C_0603" H 4025 2775 50  0001 C CNN
F 3 "~" H 4025 2775 50  0001 C CNN
	1    4025 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 2675 4025 2625
Wire Wire Line
	4025 2625 3975 2625
Wire Wire Line
	3575 2975 4025 2975
Wire Wire Line
	4025 2975 4025 2875
Connection ~ 3575 2975
Wire Wire Line
	3575 3050 3575 2975
$Comp
L Device:C_Small C?
U 1 1 5DEEDE9F
P 9025 2250
AR Path="/5DEEDE9F" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5DEEDE9F" Ref="C94"  Part="1" 
F 0 "C94" H 9117 2296 50  0000 L CNN
F 1 "1uF" H 9117 2205 50  0000 L CNN
F 2 "calisco-general:C_0603" H 9025 2250 50  0001 C CNN
F 3 "~" H 9025 2250 50  0001 C CNN
	1    9025 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5DEEDEA5
P 6600 2100
AR Path="/5DEEDEA5" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5DEEDEA5" Ref="R27"  Part="1" 
F 0 "R27" H 6659 2146 50  0000 L CNN
F 1 "33k" H 6659 2055 50  0000 L CNN
F 2 "calisco-general:R_0603" H 6600 2100 50  0001 C CNN
F 3 "~" H 6600 2100 50  0001 C CNN
	1    6600 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5DEEDEAB
P 6600 2700
AR Path="/5DEEDEAB" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5DEEDEAB" Ref="R36"  Part="1" 
F 0 "R36" H 6659 2746 50  0000 L CNN
F 1 "33k" H 6659 2655 50  0000 L CNN
F 2 "calisco-general:R_0603" H 6600 2700 50  0001 C CNN
F 3 "~" H 6600 2700 50  0001 C CNN
	1    6600 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2200 6600 2250
Text HLabel 6600 1700 0    60   Input ~ 0
C1-_C2+
Text HLabel 6600 3100 0    60   Input ~ 0
C2-
Text HLabel 5900 800  0    60   Input ~ 0
6V5
Text HLabel 5900 925  0    60   Input ~ 0
GNDLOGIC
Text Label 6000 800  0    60   ~ 0
6V5_VCSENSE
Wire Wire Line
	6000 800  5900 800 
Text Label 6000 925  0    60   ~ 0
GND_VCSENSE
Wire Wire Line
	6000 925  5900 925 
$Comp
L Device:L_Small L9
U 1 1 5DF91556
P 3250 2050
F 0 "L9" H 3298 2096 50  0000 L CNN
F 1 "Ferrite" H 3298 2005 50  0000 L CNN
F 2 "calisco-general:C_0603" H 3250 2050 50  0001 C CNN
F 3 "~" H 3250 2050 50  0001 C CNN
	1    3250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2150 3250 2275
Connection ~ 3250 2275
Wire Wire Line
	3250 1825 3250 1900
$Comp
L Device:L_Small L10
U 1 1 5DF9411E
P 7400 1725
F 0 "L10" H 7448 1771 50  0000 L CNN
F 1 "Ferrite" H 7448 1680 50  0000 L CNN
F 2 "calisco-general:C_0603" H 7400 1725 50  0001 C CNN
F 3 "~" H 7400 1725 50  0001 C CNN
	1    7400 1725
	1    0    0    -1  
$EndComp
Text Label 7400 1500 2    60   ~ 0
6V5_VCSENSE
Wire Wire Line
	7400 1500 7400 1625
$Comp
L Device:L_Small L11
U 1 1 5DF953BA
P 7400 3100
F 0 "L11" H 7448 3146 50  0000 L CNN
F 1 "Ferrite" H 7448 3055 50  0000 L CNN
F 2 "calisco-general:C_0603" H 7400 3100 50  0001 C CNN
F 3 "~" H 7400 3100 50  0001 C CNN
	1    7400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3000 7400 2950
Text HLabel 8350 2400 2    60   Output ~ 0
VC2SENSE
$Comp
L Device:C_Small C?
U 1 1 5DFA2B49
P 9025 2550
AR Path="/5DFA2B49" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5DFA2B49" Ref="C144"  Part="1" 
F 0 "C144" H 9117 2596 50  0000 L CNN
F 1 "1uF" H 9117 2505 50  0000 L CNN
F 2 "calisco-general:C_0603" H 9025 2550 50  0001 C CNN
F 3 "~" H 9025 2550 50  0001 C CNN
	1    9025 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9025 1875 7400 1875
Wire Wire Line
	9025 1875 9025 2150
Connection ~ 7400 1875
Wire Wire Line
	7400 1875 7400 2050
Wire Wire Line
	7400 2950 9025 2950
Wire Wire Line
	9025 2950 9025 2650
Connection ~ 7400 2950
Wire Wire Line
	7400 2950 7400 2750
Wire Wire Line
	9025 2350 9025 2400
Text Label 9725 2400 0    60   ~ 0
GND_VCSENSE
Wire Wire Line
	9725 2400 9350 2400
Connection ~ 9025 2400
Wire Wire Line
	9025 2400 9025 2450
Text Label 7400 3350 2    60   ~ 0
-6V5_VCSENSE
Wire Wire Line
	7400 3350 7400 3200
Wire Wire Line
	4850 2625 4025 2625
Connection ~ 4025 2625
Text Label 4800 2625 2    60   ~ 0
1V25_VC2SENSE
Text Label 9025 1875 2    60   ~ 0
6V5_FIL_SENSE
Text Label 9025 2950 2    60   ~ 0
-6V5_FIL_SENSE
$Comp
L calisco_specialty:LTC1144 U21
U 1 1 5DFDF7EF
P 2475 6725
F 0 "U21" H 2475 7122 60  0000 C CNN
F 1 "LTC1144" H 2475 7016 60  0000 C CNN
F 2 "calisco-general:SOIC-8" H 2475 6375 60  0001 C CNN
F 3 "" H 2475 6725 60  0000 C CNN
	1    2475 6725
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DFE1B98
P 1525 6775
AR Path="/5DFE1B98" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5DFE1B98" Ref="C139"  Part="1" 
F 0 "C139" H 1617 6821 50  0000 L CNN
F 1 "10uF" H 1617 6730 50  0000 L CNN
F 2 "calisco-general:C_0603" H 1525 6775 50  0001 C CNN
F 3 "~" H 1525 6775 50  0001 C CNN
	1    1525 6775
	1    0    0    -1  
$EndComp
Wire Wire Line
	1525 6675 2025 6675
Wire Wire Line
	1525 6875 2025 6875
$Comp
L Device:C_Small C?
U 1 1 5DFE4001
P 3100 7025
AR Path="/5DFE4001" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5DFE4001" Ref="C141"  Part="1" 
F 0 "C141" H 3192 7071 50  0000 L CNN
F 1 "10uF" H 3192 6980 50  0000 L CNN
F 2 "calisco-general:C_0603" H 3100 7025 50  0001 C CNN
F 3 "~" H 3100 7025 50  0001 C CNN
	1    3100 7025
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6925 3100 6875
Wire Wire Line
	3100 6875 2925 6875
Wire Wire Line
	2025 6775 1950 6775
Wire Wire Line
	1950 6775 1950 7175
Wire Wire Line
	1950 7175 3100 7175
Wire Wire Line
	3100 7175 3100 7125
Text Label 1950 7175 2    60   ~ 0
GND_VCSENSE
NoConn ~ 2925 6675
Text Label 3875 6575 0    60   ~ 0
6V5_VCSENSE
$Comp
L Device:C_Small C?
U 1 1 5DFEB97A
P 4175 6800
AR Path="/5DFEB97A" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5DFEB97A" Ref="C143"  Part="1" 
F 0 "C143" H 4267 6846 50  0000 L CNN
F 1 "10uF" H 4267 6755 50  0000 L CNN
F 2 "calisco-general:C_1206" H 4175 6800 50  0001 C CNN
F 3 "~" H 4175 6800 50  0001 C CNN
	1    4175 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 7175 3500 7175
Wire Wire Line
	4175 7175 4175 6900
Connection ~ 3100 7175
Wire Wire Line
	4175 6700 4175 6575
Wire Wire Line
	2925 6575 3100 6575
$Comp
L Device:R_Small R?
U 1 1 5DFEF3B8
P 2475 6200
AR Path="/5DFEF3B8" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5DFEF3B8" Ref="R26"  Part="1" 
F 0 "R26" H 2534 6246 50  0000 L CNN
F 1 "10k" H 2534 6155 50  0000 L CNN
F 2 "calisco-general:R_0603" H 2475 6200 50  0001 C CNN
F 3 "~" H 2475 6200 50  0001 C CNN
	1    2475 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2375 6200 1950 6200
Wire Wire Line
	1950 6200 1950 6575
Wire Wire Line
	1950 6575 2025 6575
Wire Wire Line
	2575 6200 3100 6200
Wire Wire Line
	3100 6200 3100 6575
Connection ~ 3100 6575
Wire Wire Line
	3100 6575 3875 6575
$Comp
L Device:C_Small C?
U 1 1 5DFF7950
P 3875 6800
AR Path="/5DFF7950" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5DFF7950" Ref="C142"  Part="1" 
F 0 "C142" H 3967 6846 50  0000 L CNN
F 1 "1uF" H 3967 6755 50  0000 L CNN
F 2 "calisco-general:C_0603" H 3875 6800 50  0001 C CNN
F 3 "~" H 3875 6800 50  0001 C CNN
	1    3875 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 6900 3875 7175
Connection ~ 3875 7175
Wire Wire Line
	3875 7175 4175 7175
Wire Wire Line
	3875 6700 3875 6575
Connection ~ 3875 6575
Wire Wire Line
	3875 6575 4175 6575
$Comp
L Device:C_Small C?
U 1 1 5E008F93
P 9350 2250
AR Path="/5E008F93" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5E008F93" Ref="C145"  Part="1" 
F 0 "C145" H 9442 2296 50  0000 L CNN
F 1 "10uF" H 9442 2205 50  0000 L CNN
F 2 "calisco-general:C_0805" H 9350 2250 50  0001 C CNN
F 3 "~" H 9350 2250 50  0001 C CNN
	1    9350 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E009230
P 9350 2550
AR Path="/5E009230" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5E009230" Ref="C146"  Part="1" 
F 0 "C146" H 9442 2596 50  0000 L CNN
F 1 "10uF" H 9442 2505 50  0000 L CNN
F 2 "calisco-general:C_0805" H 9350 2550 50  0001 C CNN
F 3 "~" H 9350 2550 50  0001 C CNN
	1    9350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2350 9350 2400
Connection ~ 9350 2400
Wire Wire Line
	9350 2400 9025 2400
Wire Wire Line
	9350 2400 9350 2450
Wire Wire Line
	9350 2150 9350 1875
Wire Wire Line
	9350 1875 9025 1875
Connection ~ 9025 1875
Wire Wire Line
	9025 2950 9350 2950
Wire Wire Line
	9350 2950 9350 2650
Connection ~ 9025 2950
Text Label 3250 2275 2    60   ~ 0
5V_VC2SENSE_FIL
Text Label 3250 1825 2    60   ~ 0
5V_VCSENSE
Wire Wire Line
	7850 2400 8350 2400
$Comp
L calisco_power:TLV760 U22
U 1 1 5E25C9E3
P 1875 2100
F 0 "U22" H 1875 2587 60  0000 C CNN
F 1 "TLV760" H 1875 2481 60  0000 C CNN
F 2 "calisco-general:SOT-23" H 1875 2100 60  0001 C CNN
F 3 "" H 1875 2100 60  0001 C CNN
	1    1875 2100
	1    0    0    -1  
$EndComp
Text Label 3650 3050 3    60   ~ 0
GND_VCSENSE
Wire Wire Line
	2325 1900 2425 1900
Connection ~ 3250 1900
Wire Wire Line
	3250 1900 3250 1950
Wire Wire Line
	3250 2975 2425 2975
Wire Wire Line
	1875 2975 1875 2300
Connection ~ 3250 2975
$Comp
L Device:C_Small C?
U 1 1 5E265BE8
P 2425 2600
AR Path="/5E265BE8" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5E265BE8" Ref="C147"  Part="1" 
F 0 "C147" H 2517 2646 50  0000 L CNN
F 1 "1uF" H 2517 2555 50  0000 L CNN
F 2 "calisco-general:C_0603" H 2425 2600 50  0001 C CNN
F 3 "~" H 2425 2600 50  0001 C CNN
	1    2425 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E265F15
P 1350 2600
AR Path="/5E265F15" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5E265F15" Ref="C81"  Part="1" 
F 0 "C81" H 1442 2646 50  0000 L CNN
F 1 "1uF" H 1442 2555 50  0000 L CNN
F 2 "calisco-general:C_0603" H 1350 2600 50  0001 C CNN
F 3 "~" H 1350 2600 50  0001 C CNN
	1    1350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2500 1350 1900
Wire Wire Line
	1350 1900 1425 1900
Wire Wire Line
	1350 2700 1350 2975
Wire Wire Line
	1350 2975 1875 2975
Connection ~ 1875 2975
Wire Wire Line
	2425 2700 2425 2975
Connection ~ 2425 2975
Wire Wire Line
	2425 2975 1875 2975
Wire Wire Line
	2425 2500 2425 1900
Connection ~ 2425 1900
Wire Wire Line
	2425 1900 3250 1900
Text Label 1350 1900 2    60   ~ 0
6V5_VCSENSE
$Comp
L Device:R_Small R?
U 1 1 5E294C0A
P 3500 7000
AR Path="/5E294C0A" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5E294C0A" Ref="R41"  Part="1" 
F 0 "R41" H 3559 7046 50  0000 L CNN
F 1 "10k" H 3559 6955 50  0000 L CNN
F 2 "calisco-general:R_0603" H 3500 7000 50  0001 C CNN
F 3 "~" H 3500 7000 50  0001 C CNN
	1    3500 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6900 3500 6775
Wire Wire Line
	3500 6775 2925 6775
Wire Wire Line
	3500 7100 3500 7175
Connection ~ 3500 7175
Wire Wire Line
	3500 7175 3875 7175
Text Label 2950 6875 0    60   ~ 0
-6V5_VCSENSE
$Comp
L Device:R_Small R?
U 1 1 5FDDCAF2
P 6550 4275
AR Path="/5FDDCAF2" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5FDDCAF2" Ref="R?"  Part="1" 
F 0 "R?" H 6609 4321 50  0000 L CNN
F 1 "145k" H 6609 4230 50  0000 L CNN
F 2 "calisco-general:R_0603" H 6550 4275 50  0001 C CNN
F 3 "~" H 6550 4275 50  0001 C CNN
	1    6550 4275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FDDCAF9
P 6550 4775
AR Path="/5FDDCAF9" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5FDDCAF9" Ref="R?"  Part="1" 
F 0 "R?" H 6609 4821 50  0000 L CNN
F 1 "2k" H 6609 4730 50  0000 L CNN
F 2 "calisco-general:R_0603" H 6550 4775 50  0001 C CNN
F 3 "~" H 6550 4775 50  0001 C CNN
	1    6550 4775
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FDDCB00
P 6550 5275
AR Path="/5FDDCB00" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5FDDCB00" Ref="R?"  Part="1" 
F 0 "R?" H 6609 5321 50  0000 L CNN
F 1 "16k" H 6609 5230 50  0000 L CNN
F 2 "calisco-general:R_0603" H 6550 5275 50  0001 C CNN
F 3 "~" H 6550 5275 50  0001 C CNN
	1    6550 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4075 6550 4175
Wire Wire Line
	6550 5475 6550 5375
Wire Wire Line
	6550 4975 6550 4925
Wire Wire Line
	6550 4675 6550 4625
Wire Wire Line
	6550 4625 6900 4625
Connection ~ 6550 4625
Wire Wire Line
	6550 4925 6900 4925
Connection ~ 6550 4925
Wire Wire Line
	6550 4925 6550 4875
$Comp
L calisco_discretes:LT1990 U?
U 1 1 5FDDCB10
P 7350 4775
F 0 "U?" H 7841 4828 60  0000 L CNN
F 1 "LT1990" H 7841 4722 60  0000 L CNN
F 2 "calisco-general:SOIC-8" H 7350 4775 60  0001 C CNN
F 3 "" H 7350 4775 60  0000 C CNN
	1    7350 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4625 6900 4675
Wire Wire Line
	6900 4675 7000 4675
Wire Wire Line
	6900 4925 6900 4875
Wire Wire Line
	6900 4875 7000 4875
$Comp
L Device:C_Small C?
U 1 1 5FDDCB1C
P 6250 4775
AR Path="/5FDDCB1C" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5FDDCB1C" Ref="C?"  Part="1" 
F 0 "C?" H 6260 4845 50  0000 L CNN
F 1 "100pF" H 6260 4695 50  0000 L CNN
F 2 "calisco-general:C_0603" H 6250 4775 50  0001 C CNN
F 3 "" H 6250 4775 50  0000 C CNN
	1    6250 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4675 6250 4625
Wire Wire Line
	6250 4625 6550 4625
Wire Wire Line
	6250 4875 6250 4925
Wire Wire Line
	6250 4925 6550 4925
$Comp
L Device:C_Small C?
U 1 1 5FDDCB27
P 8975 4625
AR Path="/5FDDCB27" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5FDDCB27" Ref="C?"  Part="1" 
F 0 "C?" H 9067 4671 50  0000 L CNN
F 1 "1uF" H 9067 4580 50  0000 L CNN
F 2 "calisco-general:C_0603" H 8975 4625 50  0001 C CNN
F 3 "~" H 8975 4625 50  0001 C CNN
	1    8975 4625
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FDDCB2E
P 6550 4475
AR Path="/5FDDCB2E" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5FDDCB2E" Ref="R?"  Part="1" 
F 0 "R?" H 6609 4521 50  0000 L CNN
F 1 "145k" H 6609 4430 50  0000 L CNN
F 2 "calisco-general:R_0603" H 6550 4475 50  0001 C CNN
F 3 "~" H 6550 4475 50  0001 C CNN
	1    6550 4475
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FDDCB35
P 6550 5075
AR Path="/5FDDCB35" Ref="R?"  Part="1" 
AR Path="/5DEEB9C4/5FDDCB35" Ref="R?"  Part="1" 
F 0 "R?" H 6609 5121 50  0000 L CNN
F 1 "16k" H 6609 5030 50  0000 L CNN
F 2 "calisco-general:R_0603" H 6550 5075 50  0001 C CNN
F 3 "~" H 6550 5075 50  0001 C CNN
	1    6550 5075
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4575 6550 4625
Text HLabel 6550 4075 0    60   Input ~ 0
C1+
Text HLabel 6550 5475 0    60   Input ~ 0
C1-_C2+
Text HLabel 8300 4775 2    60   Output ~ 0
VC1SENSE
$Comp
L Device:C_Small C?
U 1 1 5FDDCB51
P 8975 4925
AR Path="/5FDDCB51" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5FDDCB51" Ref="C?"  Part="1" 
F 0 "C?" H 9067 4971 50  0000 L CNN
F 1 "1uF" H 9067 4880 50  0000 L CNN
F 2 "calisco-general:C_0603" H 8975 4925 50  0001 C CNN
F 3 "~" H 8975 4925 50  0001 C CNN
	1    8975 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	8975 4250 7350 4250
Wire Wire Line
	8975 4250 8975 4525
Wire Wire Line
	7350 4250 7350 4425
Wire Wire Line
	7350 5325 8975 5325
Wire Wire Line
	8975 5325 8975 5025
Wire Wire Line
	7350 5325 7350 5125
Wire Wire Line
	8975 4725 8975 4775
Text Label 9675 4775 0    60   ~ 0
GND_VCSENSE
Wire Wire Line
	9675 4775 9300 4775
Connection ~ 8975 4775
Wire Wire Line
	8975 4775 8975 4825
Text Label 8975 4250 2    60   ~ 0
6V5_FIL_SENSE
Text Label 8975 5325 2    60   ~ 0
-6V5_FIL_SENSE
$Comp
L Device:C_Small C?
U 1 1 5FDDCB69
P 9300 4625
AR Path="/5FDDCB69" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5FDDCB69" Ref="C?"  Part="1" 
F 0 "C?" H 9392 4671 50  0000 L CNN
F 1 "10uF" H 9392 4580 50  0000 L CNN
F 2 "calisco-general:C_0805" H 9300 4625 50  0001 C CNN
F 3 "~" H 9300 4625 50  0001 C CNN
	1    9300 4625
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FDDCB70
P 9300 4925
AR Path="/5FDDCB70" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5FDDCB70" Ref="C?"  Part="1" 
F 0 "C?" H 9392 4971 50  0000 L CNN
F 1 "10uF" H 9392 4880 50  0000 L CNN
F 2 "calisco-general:C_0805" H 9300 4925 50  0001 C CNN
F 3 "~" H 9300 4925 50  0001 C CNN
	1    9300 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4725 9300 4775
Connection ~ 9300 4775
Wire Wire Line
	9300 4775 8975 4775
Wire Wire Line
	9300 4775 9300 4825
Wire Wire Line
	9300 4525 9300 4250
Wire Wire Line
	9300 4250 8975 4250
Connection ~ 8975 4250
Wire Wire Line
	8975 5325 9300 5325
Wire Wire Line
	9300 5325 9300 5025
Connection ~ 8975 5325
Wire Wire Line
	7800 4775 8300 4775
$Comp
L calisco_discretes:LT1990 U?
U 2 1 5FDFB53E
P 4800 5050
F 0 "U?" H 4623 5160 60  0000 R CNN
F 1 "LT1990" H 4623 5054 60  0000 R CNN
F 2 "calisco-general:SOIC-8" H 4800 5050 60  0001 C CNN
F 3 "" H 4800 5050 60  0000 C CNN
	2    4800 5050
	1    0    0    -1  
$EndComp
NoConn ~ 5100 4950
NoConn ~ 5100 5150
$Comp
L Reference_Voltage:REF3012 U?
U 1 1 5FDFB547
P 3625 4700
AR Path="/5FDFB547" Ref="U?"  Part="1" 
AR Path="/5DEEB9C4/5FDFB547" Ref="U?"  Part="1" 
F 0 "U?" H 3700 4950 50  0000 R CNN
F 1 "REF3012" H 3875 4450 50  0000 R CIN
F 2 "calisco-general:SOT-23" H 3625 4250 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ref3033.pdf" H 3725 4350 50  0001 C CIN
	1    3625 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FDFB54E
P 3200 4700
AR Path="/5FDFB54E" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5FDFB54E" Ref="C?"  Part="1" 
F 0 "C?" H 3292 4746 50  0000 L CNN
F 1 "1uF" H 3292 4655 50  0000 L CNN
F 2 "calisco-general:C_0603" H 3200 4700 50  0001 C CNN
F 3 "~" H 3200 4700 50  0001 C CNN
	1    3200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 4350 3200 4350
Wire Wire Line
	3200 4350 3200 4600
Wire Wire Line
	3200 4800 3200 5050
Wire Wire Line
	3200 5050 3525 5050
Wire Wire Line
	3525 5050 3525 5000
Wire Wire Line
	3525 4350 3525 4400
$Comp
L Device:C_Small C?
U 1 1 5FDFB55B
P 3975 4850
AR Path="/5FDFB55B" Ref="C?"  Part="1" 
AR Path="/5DEEB9C4/5FDFB55B" Ref="C?"  Part="1" 
F 0 "C?" H 4067 4896 50  0000 L CNN
F 1 "1uF" H 4067 4805 50  0000 L CNN
F 2 "calisco-general:C_0603" H 3975 4850 50  0001 C CNN
F 3 "~" H 3975 4850 50  0001 C CNN
	1    3975 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 4750 3975 4700
Wire Wire Line
	3975 4700 3925 4700
Wire Wire Line
	3525 5050 3975 5050
Wire Wire Line
	3975 5050 3975 4950
Connection ~ 3525 5050
Wire Wire Line
	3525 5125 3525 5050
$Comp
L Device:L_Small L?
U 1 1 5FDFB568
P 3200 4125
F 0 "L?" H 3248 4171 50  0000 L CNN
F 1 "Ferrite" H 3248 4080 50  0000 L CNN
F 2 "calisco-general:C_0603" H 3200 4125 50  0001 C CNN
F 3 "~" H 3200 4125 50  0001 C CNN
	1    3200 4125
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4225 3200 4350
Connection ~ 3200 4350
Wire Wire Line
	4800 4700 3975 4700
Connection ~ 3975 4700
Text Label 4750 4700 2    60   ~ 0
1V25_VC1SENSE
Text Label 3200 4350 2    60   ~ 0
5V_VC1SENSE_FIL
Text Label 3200 3900 2    60   ~ 0
5V_VCSENSE
Text Label 3525 5125 3    60   ~ 0
GND_VCSENSE
Wire Wire Line
	3200 3900 3200 4025
$EndSCHEMATC
