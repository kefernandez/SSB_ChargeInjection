EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2500 1125 0    60   Input ~ 0
VDC
Text Label 2725 1125 0    60   ~ 0
VDC
Wire Wire Line
	2500 1125 2725 1125
$Sheet
S 6050 5625 900  400 
U 5FF6C3CD
F0 "sheet5FF6C3C6" 60
F1 "ADuMISO.sch" 60
F2 "VDDIN" I L 6050 5725 60 
F3 "GNDIN" I L 6050 5925 60 
F4 "GNDOUT" O R 6950 5925 60 
F5 "VDDOUT" O R 6950 5725 60 
$EndSheet
Text Label 7100 5925 0    60   ~ 0
SCI_Source
Text Label 7100 5725 0    60   ~ 0
VDDISO2
Wire Wire Line
	6950 5725 7750 5725
Wire Wire Line
	6950 5925 7750 5925
$Comp
L Regulator_Linear:LM2937xMP U?
U 1 1 5FF6C3DB
P 3300 5550
AR Path="/5C7A0793/5FF6C3DB" Ref="U?"  Part="1" 
AR Path="/5FE59BE5/5FF6C3DB" Ref="U13"  Part="1" 
F 0 "U13" H 3300 5792 50  0000 C CNN
F 1 "LM2937xMP" H 3300 5701 50  0000 C CNN
F 2 "calisco-general:SOT223-4" H 3300 5775 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2937.pdf" H 3300 5500 50  0001 C CNN
	1    3300 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5550 2550 5550
Text Label 3750 5550 0    60   ~ 0
VDD_Logic_CI
Text Label 2500 5950 2    60   ~ 0
GND_Logic_CI
Wire Wire Line
	2500 5950 2550 5950
Wire Wire Line
	3300 5950 3300 5850
$Comp
L Device:C_Small C?
U 1 1 5FF6C3E7
P 2550 5750
AR Path="/5C7A0793/5FF6C3E7" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/5FF6C3E7" Ref="C42"  Part="1" 
F 0 "C42" H 2642 5796 50  0000 L CNN
F 1 "10uF" H 2642 5705 50  0000 L CNN
F 2 "calisco-general:C_1206" H 2550 5750 50  0001 C CNN
F 3 "~" H 2550 5750 50  0001 C CNN
	1    2550 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF6C3EE
P 3700 5750
AR Path="/5C7A0793/5FF6C3EE" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/5FF6C3EE" Ref="C44"  Part="1" 
F 0 "C44" H 3792 5796 50  0000 L CNN
F 1 "10uF" H 3792 5705 50  0000 L CNN
F 2 "calisco-general:C_1206" H 3700 5750 50  0001 C CNN
F 3 "~" H 3700 5750 50  0001 C CNN
	1    3700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5650 2550 5550
Connection ~ 2550 5550
Wire Wire Line
	2550 5850 2550 5950
Connection ~ 2550 5950
Wire Wire Line
	2550 5950 2900 5950
Wire Wire Line
	3300 5950 3700 5950
Wire Wire Line
	3700 5950 3700 5850
Wire Wire Line
	3700 5650 3700 5550
Connection ~ 3700 5550
Wire Wire Line
	3700 5550 3600 5550
Wire Wire Line
	3700 5550 4150 5550
$Comp
L calisco_specialty:Si8271 U12
U 1 1 5FF6D1F4
P 4500 3975
F 0 "U12" H 4500 4462 60  0000 C CNN
F 1 "Si8271" H 4500 4356 60  0000 C CNN
F 2 "user_dc:SOIC-8" H 4650 4405 60  0001 C CNN
F 3 "" H 4650 4405 60  0001 C CNN
	1    4500 3975
	1    0    0    -1  
$EndComp
Text Label 3250 4200 0    60   ~ 0
GND_Logic_CI
Wire Wire Line
	3625 4000 3625 4050
Wire Wire Line
	3625 4050 3900 4050
Wire Wire Line
	3625 3800 3625 3750
Wire Wire Line
	3250 3750 3625 3750
Connection ~ 3625 3750
Wire Wire Line
	3625 3750 3900 3750
Text HLabel 2025 3900 0    60   Input ~ 0
INCI
$Comp
L Device:R_Small R?
U 1 1 5FF758E8
P 2575 3900
AR Path="/5C7A0793/5FF758E8" Ref="R?"  Part="1" 
AR Path="/5FE59BE5/5FF758E8" Ref="R19"  Part="1" 
F 0 "R19" H 2634 3946 50  0000 L CNN
F 1 "150" H 2634 3855 50  0000 L CNN
F 2 "calisco-general:R_0402" H 2575 3900 50  0001 C CNN
F 3 "~" H 2575 3900 50  0001 C CNN
	1    2575 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FF7674A
P 2800 4050
AR Path="/5C7A0793/5FF7674A" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/5FF7674A" Ref="C37"  Part="1" 
F 0 "C37" H 2892 4096 50  0000 L CNN
F 1 "100pF" H 2892 4005 50  0000 L CNN
F 2 "calisco-general:C_0402" H 2800 4050 50  0001 C CNN
F 3 "~" H 2800 4050 50  0001 C CNN
	1    2800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3900 3125 3900
$Comp
L Device:R_Small R?
U 1 1 5FF7756C
P 3125 4050
AR Path="/5C7A0793/5FF7756C" Ref="R?"  Part="1" 
AR Path="/5FE59BE5/5FF7756C" Ref="R22"  Part="1" 
F 0 "R22" H 3184 4096 50  0000 L CNN
F 1 "10k" H 3184 4005 50  0000 L CNN
F 2 "calisco-general:R_0402" H 3125 4050 50  0001 C CNN
F 3 "~" H 3125 4050 50  0001 C CNN
	1    3125 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3950 2800 3900
Connection ~ 2800 3900
Wire Wire Line
	2800 3900 2675 3900
Wire Wire Line
	3125 3950 3125 3900
Connection ~ 3125 3900
Wire Wire Line
	3125 3900 2800 3900
Wire Wire Line
	2800 4150 2800 4200
Wire Wire Line
	2800 4200 3125 4200
Wire Wire Line
	3125 4150 3125 4200
Connection ~ 3125 4200
Wire Wire Line
	3125 4200 3900 4200
Text HLabel 2350 4200 0    60   Input ~ 0
GND_Logic
Wire Wire Line
	2350 4200 2800 4200
Connection ~ 2800 4200
Text Label 5800 3750 2    60   ~ 0
VDDISO2
$Comp
L Device:R_Small R?
U 1 1 5FFCCBCB
P 5800 3900
AR Path="/5C7A0793/5FFCCBCB" Ref="R?"  Part="1" 
AR Path="/5FE59BE5/5FFCCBCB" Ref="R21"  Part="1" 
F 0 "R21" V 5725 3850 50  0000 L CNN
F 1 "15" V 5875 3825 50  0000 L CNN
F 2 "calisco-general:R_0402" H 5800 3900 50  0001 C CNN
F 3 "~" H 5800 3900 50  0001 C CNN
	1    5800 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 3900 5100 3900
$Comp
L calisco_power:NFET_GaNSystems Q1
U 1 1 5FFCDC44
P 6750 3850
F 0 "Q1" V 7100 3800 50  0000 L CNN
F 1 "NFET_GaNSystems" V 7000 3450 50  0000 L CNN
F 2 "user_kf:GS66506T" H 6950 3750 50  0001 L CIN
F 3 "http://epc-co.com/epc/Portals/0/epc/documents/datasheets/EPC2033_datasheet.pdf" H 6750 3850 50  0001 L CNN
	1    6750 3850
	0    -1   -1   0   
$EndComp
Text Label 5800 4200 2    60   ~ 0
SCI_Source
$Comp
L Device:L_Small L?
U 1 1 5FFCF39E
P 7875 3750
AR Path="/5C7A0793/5FFCF39E" Ref="L?"  Part="1" 
AR Path="/5FE59BE5/5FFCF39E" Ref="L9"  Part="1" 
F 0 "L9" V 8060 3750 50  0000 C CNN
F 1 "100uH" V 7969 3750 50  0000 C CNN
F 2 "user_kf:MSS1210" H 7875 3750 50  0001 C CNN
F 3 "~" H 7875 3750 50  0001 C CNN
	1    7875 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 3750 7075 3750
Wire Wire Line
	5100 4200 5800 4200
Text Label 7600 3750 2    60   ~ 0
SCI_Source
$Comp
L Device:D D1
U 1 1 5FFD8630
P 7075 4075
F 0 "D1" V 7029 4154 50  0000 L CNN
F 1 "D" V 7120 4154 50  0000 L CNN
F 2 "user_kf:D_SMB" H 7075 4075 50  0001 C CNN
F 3 "https://www.onsemi.com/pub/Collateral/MURS120T3-D.PDF" H 7075 4075 50  0001 C CNN
	1    7075 4075
	0    1    1    0   
$EndComp
Wire Wire Line
	7075 3925 7075 3750
Connection ~ 7075 3750
Wire Wire Line
	7075 3750 7675 3750
Text HLabel 8700 3750 2    60   BiDi ~ 0
C2_Top
Text HLabel 8725 4300 2    60   BiDi ~ 0
GND_PWR
Wire Wire Line
	7075 4300 7075 4225
Wire Wire Line
	7075 4300 8725 4300
Text Label 8450 3750 0    60   ~ 0
C2+
Wire Wire Line
	5900 4050 6800 4050
Wire Wire Line
	5800 3750 5100 3750
Text HLabel 6375 3100 1    60   Input ~ 0
VDC
Wire Wire Line
	6550 3750 6375 3750
Wire Wire Line
	6375 3750 6375 3100
Text Label 6375 3300 3    60   ~ 0
VDC_CI
Text Label 3250 3750 0    60   ~ 0
VDD_Logic_CI
Text HLabel 2500 5550 0    60   Input ~ 0
VDD_Logic
Wire Wire Line
	6050 5925 5900 5925
Wire Wire Line
	5900 5725 6050 5725
Text Label 5900 5925 2    60   ~ 0
GND_Logic_CI
Text Label 5900 5725 2    60   ~ 0
VDD_Logic_CI
$Comp
L Device:C_Small C?
U 1 1 5FFD3BC7
P 2900 5750
AR Path="/5C7A0793/5FFD3BC7" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/5FFD3BC7" Ref="C43"  Part="1" 
F 0 "C43" H 2992 5796 50  0000 L CNN
F 1 "0.1uF" H 2992 5705 50  0000 L CNN
F 2 "calisco-general:C_1206" H 2900 5750 50  0001 C CNN
F 3 "~" H 2900 5750 50  0001 C CNN
	1    2900 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 5650 2900 5550
Wire Wire Line
	2550 5550 2900 5550
Wire Wire Line
	2900 5550 3000 5550
Connection ~ 2900 5550
Wire Wire Line
	2900 5850 2900 5950
Connection ~ 2900 5950
Wire Wire Line
	2900 5950 3300 5950
Connection ~ 3300 5950
$Comp
L Device:C_Small C?
U 1 1 5FFD6E9E
P 3800 4700
AR Path="/5C7A0793/5FFD6E9E" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/5FFD6E9E" Ref="C38"  Part="1" 
F 0 "C38" H 3892 4746 50  0000 L CNN
F 1 "1uF" H 3892 4655 50  0000 L CNN
F 2 "calisco-general:C_0402" H 3800 4700 50  0001 C CNN
F 3 "~" H 3800 4700 50  0001 C CNN
	1    3800 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FFD8910
P 4200 4700
AR Path="/5C7A0793/5FFD8910" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/5FFD8910" Ref="C39"  Part="1" 
F 0 "C39" H 4292 4746 50  0000 L CNN
F 1 "0.1uF" H 4292 4655 50  0000 L CNN
F 2 "calisco-general:C_0402" H 4200 4700 50  0001 C CNN
F 3 "~" H 4200 4700 50  0001 C CNN
	1    4200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4600 3800 4550
Wire Wire Line
	3800 4550 4200 4550
Wire Wire Line
	4200 4550 4200 4600
Wire Wire Line
	4200 4800 4200 4850
Wire Wire Line
	4200 4850 3800 4850
Text Label 3550 4550 2    60   ~ 0
VDD_Logic_CI
Wire Wire Line
	3550 4550 3800 4550
Connection ~ 3800 4550
Text Label 3550 4850 2    60   ~ 0
GND_Logic_CI
Wire Wire Line
	3550 4850 3800 4850
Connection ~ 3800 4850
Wire Wire Line
	3800 4800 3800 4850
$Comp
L Device:R_Small R?
U 1 1 5FF74943
P 3625 3900
AR Path="/5C7A0793/5FF74943" Ref="R?"  Part="1" 
AR Path="/5FE59BE5/5FF74943" Ref="R20"  Part="1" 
F 0 "R20" H 3684 3946 50  0000 L CNN
F 1 "0 " H 3684 3855 50  0000 L CNN
F 2 "calisco-general:R_0402" H 3625 3900 50  0001 C CNN
F 3 "~" H 3625 3900 50  0001 C CNN
	1    3625 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 60047D85
P 8200 3750
AR Path="/5C7A0793/60047D85" Ref="L?"  Part="1" 
AR Path="/5FE59BE5/60047D85" Ref="L13"  Part="1" 
F 0 "L13" V 8385 3750 50  0000 C CNN
F 1 "100uH" V 8294 3750 50  0000 C CNN
F 2 "user_dc:XAL7070" H 8200 3750 50  0001 C CNN
F 3 "~" H 8200 3750 50  0001 C CNN
	1    8200 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7975 3750 8100 3750
Wire Wire Line
	8300 3750 8700 3750
Wire Wire Line
	2025 3900 2475 3900
Text Label 2125 3900 0    60   ~ 0
IN_CI
Text Label 8050 3750 3    60   ~ 0
L_Jumper
Text Label 3675 4050 0    60   ~ 0
En_CI
Text Label 2925 3900 0    60   ~ 0
PWM_CI
Text Label 5100 3900 0    60   ~ 0
Vo_high
$Comp
L Device:R_Small R?
U 1 1 6007F9A4
P 5500 4050
AR Path="/5C7A0793/6007F9A4" Ref="R?"  Part="1" 
AR Path="/5FE59BE5/6007F9A4" Ref="R32"  Part="1" 
F 0 "R32" V 5425 4000 50  0000 L CNN
F 1 "0" V 5575 3975 50  0000 L CNN
F 2 "calisco-general:R_0402" H 5500 4050 50  0001 C CNN
F 3 "~" H 5500 4050 50  0001 C CNN
	1    5500 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 4050 5100 4050
Wire Wire Line
	5600 4050 5900 4050
Connection ~ 5900 4050
Text Label 5100 4050 0    60   ~ 0
Vo_low
Wire Wire Line
	5900 3900 5900 4050
Text Label 5975 4050 0    60   ~ 0
Gate_CI
Connection ~ 7675 3750
Wire Wire Line
	7675 3750 7775 3750
Wire Wire Line
	7675 3225 7675 3750
Text HLabel 7675 3225 2    60   BiDi ~ 0
Sci_Source
$Comp
L Device:C_Small C?
U 1 1 6039FC74
P 6825 4650
AR Path="/5C7A0793/6039FC74" Ref="C?"  Part="1" 
AR Path="/5FE59BE5/6039FC74" Ref="C78"  Part="1" 
F 0 "C78" H 6917 4696 50  0000 L CNN
F 1 "1uF" H 6917 4605 50  0000 L CNN
F 2 "calisco-general:C_0603" H 6825 4650 50  0001 C CNN
F 3 "~" H 6825 4650 50  0001 C CNN
	1    6825 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 4550 6825 4500
Text Label 6575 4500 2    60   ~ 0
VDDISO2
Wire Wire Line
	6575 4500 6825 4500
Text Label 6575 4800 2    60   ~ 0
SCI_Source
Wire Wire Line
	6575 4800 6825 4800
Wire Wire Line
	6825 4750 6825 4800
$EndSCHEMATC
