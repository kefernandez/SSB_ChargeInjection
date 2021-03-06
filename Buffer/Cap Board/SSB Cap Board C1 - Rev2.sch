EESchema Schematic File Version 4
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
Wire Wire Line
	8200 2500 8575 2500
$Comp
L Device:C_Small C?
U 1 1 5CF03035
P 8200 2400
AR Path="/5CACEBF5/5CF03035" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF03035" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF03035" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF03035" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF03035" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF03035" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF03035" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF03035" Ref="C?"  Part="1" 
AR Path="/5CF03035" Ref="C15"  Part="1" 
F 0 "C15" H 8292 2446 50  0000 L CNN
F 1 "2.2 uF" H 8292 2355 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 8200 2400 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 8200 2400 50  0001 C CNN
	1    8200 2400
	1    0    0    -1  
$EndComp
Connection ~ 8200 2500
Wire Wire Line
	7800 2500 8200 2500
Wire Wire Line
	7800 2300 8200 2300
Connection ~ 7800 2300
$Comp
L Device:C_Small C?
U 1 1 5CF03040
P 7800 2400
AR Path="/5CACEBF5/5CF03040" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF03040" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF03040" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF03040" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF03040" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF03040" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF03040" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF03040" Ref="C?"  Part="1" 
AR Path="/5CF03040" Ref="C14"  Part="1" 
F 0 "C14" H 7892 2446 50  0000 L CNN
F 1 "2.2 uF" H 7892 2355 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7800 2400 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7800 2400 50  0001 C CNN
	1    7800 2400
	1    0    0    -1  
$EndComp
Connection ~ 7800 2500
Wire Wire Line
	7350 2500 7800 2500
Wire Wire Line
	7350 2300 7800 2300
Connection ~ 7350 2300
$Comp
L Device:C_Small C?
U 1 1 5CF0304B
P 7350 2400
AR Path="/5CACEBF5/5CF0304B" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0304B" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0304B" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0304B" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0304B" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0304B" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0304B" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0304B" Ref="C?"  Part="1" 
AR Path="/5CF0304B" Ref="C13"  Part="1" 
F 0 "C13" H 7442 2446 50  0000 L CNN
F 1 "2.2 uF" H 7442 2355 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7350 2400 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7350 2400 50  0001 C CNN
	1    7350 2400
	1    0    0    -1  
$EndComp
Connection ~ 7350 2500
Wire Wire Line
	6950 2500 7350 2500
Wire Wire Line
	6950 2300 7350 2300
Connection ~ 6950 2300
$Comp
L Device:C_Small C?
U 1 1 5CF03056
P 6950 2400
AR Path="/5CACEBF5/5CF03056" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF03056" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF03056" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF03056" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF03056" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF03056" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF03056" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF03056" Ref="C?"  Part="1" 
AR Path="/5CF03056" Ref="C12"  Part="1" 
F 0 "C12" H 7042 2446 50  0000 L CNN
F 1 "2.2 uF" H 7042 2355 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6950 2400 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6950 2400 50  0001 C CNN
	1    6950 2400
	1    0    0    -1  
$EndComp
Connection ~ 6950 2500
Wire Wire Line
	6500 2500 6950 2500
Wire Wire Line
	6500 2300 6950 2300
Connection ~ 6500 2300
$Comp
L Device:C_Small C?
U 1 1 5CF03061
P 6500 2400
AR Path="/5CACEBF5/5CF03061" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF03061" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF03061" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF03061" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF03061" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF03061" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF03061" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF03061" Ref="C?"  Part="1" 
AR Path="/5CF03061" Ref="C11"  Part="1" 
F 0 "C11" H 6592 2446 50  0000 L CNN
F 1 "2.2 uF" H 6592 2355 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6500 2400 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6500 2400 50  0001 C CNN
	1    6500 2400
	1    0    0    -1  
$EndComp
Connection ~ 6500 2500
Wire Wire Line
	6125 2500 6500 2500
Wire Wire Line
	6125 2300 6500 2300
Connection ~ 6125 2300
$Comp
L Device:C_Small C?
U 1 1 5CF0306C
P 6125 2400
AR Path="/5CACEBF5/5CF0306C" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0306C" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0306C" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0306C" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0306C" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0306C" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0306C" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0306C" Ref="C?"  Part="1" 
AR Path="/5CF0306C" Ref="C10"  Part="1" 
F 0 "C10" H 6217 2446 50  0000 L CNN
F 1 "2.2 uF" H 6217 2355 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6125 2400 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6125 2400 50  0001 C CNN
	1    6125 2400
	1    0    0    -1  
$EndComp
Connection ~ 6125 2500
Wire Wire Line
	5775 2500 6125 2500
Wire Wire Line
	5775 2300 6125 2300
Connection ~ 5775 2300
$Comp
L Device:C_Small C?
U 1 1 5CF03078
P 5775 2400
AR Path="/5CACEBF5/5CF03078" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF03078" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF03078" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF03078" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF03078" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF03078" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF03078" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF03078" Ref="C?"  Part="1" 
AR Path="/5CF03078" Ref="C9"  Part="1" 
F 0 "C9" H 5867 2446 50  0000 L CNN
F 1 "2.2 uF" H 5867 2355 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 5775 2400 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 5775 2400 50  0001 C CNN
	1    5775 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CF0363B
P 8175 2925
AR Path="/5CACEBF5/5CF0363B" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0363B" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0363B" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0363B" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0363B" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0363B" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0363B" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0363B" Ref="C?"  Part="1" 
AR Path="/5CF0363B" Ref="C22"  Part="1" 
F 0 "C22" H 8267 2971 50  0000 L CNN
F 1 "2.2 uF" H 8267 2880 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 8175 2925 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 8175 2925 50  0001 C CNN
	1    8175 2925
	1    0    0    -1  
$EndComp
Connection ~ 8175 3025
Wire Wire Line
	7775 3025 8175 3025
Wire Wire Line
	7775 2825 8175 2825
Connection ~ 7775 2825
$Comp
L Device:C_Small C?
U 1 1 5CF03646
P 7775 2925
AR Path="/5CACEBF5/5CF03646" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF03646" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF03646" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF03646" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF03646" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF03646" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF03646" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF03646" Ref="C?"  Part="1" 
AR Path="/5CF03646" Ref="C21"  Part="1" 
F 0 "C21" H 7867 2971 50  0000 L CNN
F 1 "2.2 uF" H 7867 2880 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7775 2925 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7775 2925 50  0001 C CNN
	1    7775 2925
	1    0    0    -1  
$EndComp
Connection ~ 7775 3025
Wire Wire Line
	7325 3025 7775 3025
Wire Wire Line
	7325 2825 7775 2825
Connection ~ 7325 2825
$Comp
L Device:C_Small C?
U 1 1 5CF03651
P 7325 2925
AR Path="/5CACEBF5/5CF03651" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF03651" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF03651" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF03651" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF03651" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF03651" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF03651" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF03651" Ref="C?"  Part="1" 
AR Path="/5CF03651" Ref="C20"  Part="1" 
F 0 "C20" H 7417 2971 50  0000 L CNN
F 1 "2.2 uF" H 7417 2880 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7325 2925 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7325 2925 50  0001 C CNN
	1    7325 2925
	1    0    0    -1  
$EndComp
Connection ~ 7325 3025
Wire Wire Line
	6925 3025 7325 3025
Wire Wire Line
	6925 2825 7325 2825
Connection ~ 6925 2825
$Comp
L Device:C_Small C?
U 1 1 5CF0365C
P 6925 2925
AR Path="/5CACEBF5/5CF0365C" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0365C" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0365C" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0365C" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0365C" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0365C" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0365C" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0365C" Ref="C?"  Part="1" 
AR Path="/5CF0365C" Ref="C19"  Part="1" 
F 0 "C19" H 7017 2971 50  0000 L CNN
F 1 "2.2 uF" H 7017 2880 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6925 2925 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6925 2925 50  0001 C CNN
	1    6925 2925
	1    0    0    -1  
$EndComp
Connection ~ 6925 3025
Wire Wire Line
	6475 3025 6925 3025
Wire Wire Line
	6475 2825 6925 2825
Connection ~ 6475 2825
$Comp
L Device:C_Small C?
U 1 1 5CF03667
P 6475 2925
AR Path="/5CACEBF5/5CF03667" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF03667" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF03667" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF03667" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF03667" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF03667" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF03667" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF03667" Ref="C?"  Part="1" 
AR Path="/5CF03667" Ref="C18"  Part="1" 
F 0 "C18" H 6567 2971 50  0000 L CNN
F 1 "2.2 uF" H 6567 2880 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6475 2925 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6475 2925 50  0001 C CNN
	1    6475 2925
	1    0    0    -1  
$EndComp
Connection ~ 6475 3025
Wire Wire Line
	6100 3025 6475 3025
Wire Wire Line
	6100 2825 6475 2825
Connection ~ 6100 2825
$Comp
L Device:C_Small C?
U 1 1 5CF03672
P 6100 2925
AR Path="/5CACEBF5/5CF03672" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF03672" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF03672" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF03672" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF03672" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF03672" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF03672" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF03672" Ref="C?"  Part="1" 
AR Path="/5CF03672" Ref="C17"  Part="1" 
F 0 "C17" H 6192 2971 50  0000 L CNN
F 1 "2.2 uF" H 6192 2880 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6100 2925 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6100 2925 50  0001 C CNN
	1    6100 2925
	1    0    0    -1  
$EndComp
Connection ~ 6100 3025
Wire Wire Line
	5750 3025 6100 3025
Wire Wire Line
	5750 2825 6100 2825
Connection ~ 5750 2825
$Comp
L Device:C_Small C?
U 1 1 5CF0367E
P 5750 2925
AR Path="/5CACEBF5/5CF0367E" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0367E" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0367E" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0367E" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0367E" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0367E" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0367E" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0367E" Ref="C?"  Part="1" 
AR Path="/5CF0367E" Ref="C16"  Part="1" 
F 0 "C16" H 5842 2971 50  0000 L CNN
F 1 "2.2 uF" H 5842 2880 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 5750 2925 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 5750 2925 50  0001 C CNN
	1    5750 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3575 8625 3575
$Comp
L Device:C_Small C?
U 1 1 5CF06001
P 8200 3475
AR Path="/5CACEBF5/5CF06001" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF06001" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF06001" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF06001" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF06001" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF06001" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF06001" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF06001" Ref="C?"  Part="1" 
AR Path="/5CF06001" Ref="C29"  Part="1" 
F 0 "C29" H 8292 3521 50  0000 L CNN
F 1 "2.2 uF" H 8292 3430 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 8200 3475 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 8200 3475 50  0001 C CNN
	1    8200 3475
	1    0    0    -1  
$EndComp
Connection ~ 8200 3575
Wire Wire Line
	7800 3575 8200 3575
Wire Wire Line
	7800 3375 8200 3375
Connection ~ 7800 3375
$Comp
L Device:C_Small C?
U 1 1 5CF0600C
P 7800 3475
AR Path="/5CACEBF5/5CF0600C" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0600C" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0600C" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0600C" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0600C" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0600C" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0600C" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0600C" Ref="C?"  Part="1" 
AR Path="/5CF0600C" Ref="C28"  Part="1" 
F 0 "C28" H 7892 3521 50  0000 L CNN
F 1 "2.2 uF" H 7892 3430 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7800 3475 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7800 3475 50  0001 C CNN
	1    7800 3475
	1    0    0    -1  
$EndComp
Connection ~ 7800 3575
Wire Wire Line
	7350 3575 7800 3575
Wire Wire Line
	7350 3375 7800 3375
Connection ~ 7350 3375
$Comp
L Device:C_Small C?
U 1 1 5CF06017
P 7350 3475
AR Path="/5CACEBF5/5CF06017" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF06017" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF06017" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF06017" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF06017" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF06017" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF06017" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF06017" Ref="C?"  Part="1" 
AR Path="/5CF06017" Ref="C27"  Part="1" 
F 0 "C27" H 7442 3521 50  0000 L CNN
F 1 "2.2 uF" H 7442 3430 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7350 3475 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7350 3475 50  0001 C CNN
	1    7350 3475
	1    0    0    -1  
$EndComp
Connection ~ 7350 3575
Wire Wire Line
	6950 3575 7350 3575
Wire Wire Line
	6950 3375 7350 3375
Connection ~ 6950 3375
$Comp
L Device:C_Small C?
U 1 1 5CF06022
P 6950 3475
AR Path="/5CACEBF5/5CF06022" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF06022" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF06022" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF06022" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF06022" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF06022" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF06022" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF06022" Ref="C?"  Part="1" 
AR Path="/5CF06022" Ref="C26"  Part="1" 
F 0 "C26" H 7042 3521 50  0000 L CNN
F 1 "2.2 uF" H 7042 3430 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6950 3475 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6950 3475 50  0001 C CNN
	1    6950 3475
	1    0    0    -1  
$EndComp
Connection ~ 6950 3575
Wire Wire Line
	6500 3575 6950 3575
Wire Wire Line
	6500 3375 6950 3375
Connection ~ 6500 3375
$Comp
L Device:C_Small C?
U 1 1 5CF0602D
P 6500 3475
AR Path="/5CACEBF5/5CF0602D" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0602D" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0602D" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0602D" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0602D" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0602D" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0602D" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0602D" Ref="C?"  Part="1" 
AR Path="/5CF0602D" Ref="C25"  Part="1" 
F 0 "C25" H 6592 3521 50  0000 L CNN
F 1 "2.2 uF" H 6592 3430 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6500 3475 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6500 3475 50  0001 C CNN
	1    6500 3475
	1    0    0    -1  
$EndComp
Connection ~ 6500 3575
Wire Wire Line
	6125 3575 6500 3575
Wire Wire Line
	6125 3375 6500 3375
Connection ~ 6125 3375
$Comp
L Device:C_Small C?
U 1 1 5CF06038
P 6125 3475
AR Path="/5CACEBF5/5CF06038" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF06038" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF06038" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF06038" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF06038" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF06038" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF06038" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF06038" Ref="C?"  Part="1" 
AR Path="/5CF06038" Ref="C24"  Part="1" 
F 0 "C24" H 6217 3521 50  0000 L CNN
F 1 "2.2 uF" H 6217 3430 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6125 3475 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6125 3475 50  0001 C CNN
	1    6125 3475
	1    0    0    -1  
$EndComp
Connection ~ 6125 3575
Wire Wire Line
	5775 3575 6125 3575
Wire Wire Line
	5775 3375 6125 3375
Connection ~ 5775 3375
$Comp
L Device:C_Small C?
U 1 1 5CF06044
P 5775 3475
AR Path="/5CACEBF5/5CF06044" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF06044" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF06044" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF06044" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF06044" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF06044" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF06044" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF06044" Ref="C?"  Part="1" 
AR Path="/5CF06044" Ref="C23"  Part="1" 
F 0 "C23" H 5867 3521 50  0000 L CNN
F 1 "2.2 uF" H 5867 3430 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 5775 3475 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 5775 3475 50  0001 C CNN
	1    5775 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4075 8625 4075
$Comp
L Device:C_Small C?
U 1 1 5CF093A8
P 8200 3975
AR Path="/5CACEBF5/5CF093A8" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF093A8" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF093A8" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF093A8" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF093A8" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF093A8" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF093A8" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF093A8" Ref="C?"  Part="1" 
AR Path="/5CF093A8" Ref="C36"  Part="1" 
F 0 "C36" H 8292 4021 50  0000 L CNN
F 1 "2.2 uF" H 8292 3930 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 8200 3975 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 8200 3975 50  0001 C CNN
	1    8200 3975
	1    0    0    -1  
$EndComp
Connection ~ 8200 4075
Wire Wire Line
	7800 4075 8200 4075
Wire Wire Line
	7800 3875 8200 3875
Connection ~ 7800 3875
$Comp
L Device:C_Small C?
U 1 1 5CF093B3
P 7800 3975
AR Path="/5CACEBF5/5CF093B3" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF093B3" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF093B3" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF093B3" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF093B3" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF093B3" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF093B3" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF093B3" Ref="C?"  Part="1" 
AR Path="/5CF093B3" Ref="C35"  Part="1" 
F 0 "C35" H 7892 4021 50  0000 L CNN
F 1 "2.2 uF" H 7892 3930 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7800 3975 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7800 3975 50  0001 C CNN
	1    7800 3975
	1    0    0    -1  
$EndComp
Connection ~ 7800 4075
Wire Wire Line
	7350 4075 7800 4075
Wire Wire Line
	7350 3875 7800 3875
Connection ~ 7350 3875
$Comp
L Device:C_Small C?
U 1 1 5CF093BE
P 7350 3975
AR Path="/5CACEBF5/5CF093BE" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF093BE" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF093BE" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF093BE" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF093BE" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF093BE" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF093BE" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF093BE" Ref="C?"  Part="1" 
AR Path="/5CF093BE" Ref="C34"  Part="1" 
F 0 "C34" H 7442 4021 50  0000 L CNN
F 1 "2.2 uF" H 7442 3930 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7350 3975 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7350 3975 50  0001 C CNN
	1    7350 3975
	1    0    0    -1  
$EndComp
Connection ~ 7350 4075
Wire Wire Line
	6950 4075 7350 4075
Wire Wire Line
	6950 3875 7350 3875
Connection ~ 6950 3875
$Comp
L Device:C_Small C?
U 1 1 5CF093C9
P 6950 3975
AR Path="/5CACEBF5/5CF093C9" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF093C9" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF093C9" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF093C9" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF093C9" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF093C9" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF093C9" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF093C9" Ref="C?"  Part="1" 
AR Path="/5CF093C9" Ref="C33"  Part="1" 
F 0 "C33" H 7042 4021 50  0000 L CNN
F 1 "2.2 uF" H 7042 3930 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6950 3975 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6950 3975 50  0001 C CNN
	1    6950 3975
	1    0    0    -1  
$EndComp
Connection ~ 6950 4075
Wire Wire Line
	6500 4075 6950 4075
Wire Wire Line
	6500 3875 6950 3875
Connection ~ 6500 3875
$Comp
L Device:C_Small C?
U 1 1 5CF093D4
P 6500 3975
AR Path="/5CACEBF5/5CF093D4" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF093D4" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF093D4" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF093D4" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF093D4" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF093D4" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF093D4" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF093D4" Ref="C?"  Part="1" 
AR Path="/5CF093D4" Ref="C32"  Part="1" 
F 0 "C32" H 6592 4021 50  0000 L CNN
F 1 "2.2 uF" H 6592 3930 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6500 3975 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6500 3975 50  0001 C CNN
	1    6500 3975
	1    0    0    -1  
$EndComp
Connection ~ 6500 4075
Wire Wire Line
	6125 4075 6500 4075
Wire Wire Line
	6125 3875 6500 3875
Connection ~ 6125 3875
$Comp
L Device:C_Small C?
U 1 1 5CF093DF
P 6125 3975
AR Path="/5CACEBF5/5CF093DF" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF093DF" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF093DF" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF093DF" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF093DF" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF093DF" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF093DF" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF093DF" Ref="C?"  Part="1" 
AR Path="/5CF093DF" Ref="C31"  Part="1" 
F 0 "C31" H 6217 4021 50  0000 L CNN
F 1 "2.2 uF" H 6217 3930 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6125 3975 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6125 3975 50  0001 C CNN
	1    6125 3975
	1    0    0    -1  
$EndComp
Connection ~ 6125 4075
Wire Wire Line
	5775 4075 6125 4075
Wire Wire Line
	5775 3875 6125 3875
Connection ~ 5775 3875
$Comp
L Device:C_Small C?
U 1 1 5CF093EB
P 5775 3975
AR Path="/5CACEBF5/5CF093EB" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF093EB" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF093EB" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF093EB" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF093EB" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF093EB" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF093EB" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF093EB" Ref="C?"  Part="1" 
AR Path="/5CF093EB" Ref="C30"  Part="1" 
F 0 "C30" H 5867 4021 50  0000 L CNN
F 1 "2.2 uF" H 5867 3930 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 5775 3975 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 5775 3975 50  0001 C CNN
	1    5775 3975
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CF0E609
P 8225 4575
AR Path="/5CACEBF5/5CF0E609" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0E609" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0E609" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0E609" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0E609" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0E609" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0E609" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0E609" Ref="C?"  Part="1" 
AR Path="/5CF0E609" Ref="C43"  Part="1" 
F 0 "C43" H 8317 4621 50  0000 L CNN
F 1 "2.2 uF" H 8317 4530 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 8225 4575 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 8225 4575 50  0001 C CNN
	1    8225 4575
	1    0    0    -1  
$EndComp
Connection ~ 8225 4675
Wire Wire Line
	7825 4675 8225 4675
Wire Wire Line
	7825 4475 8225 4475
Connection ~ 7825 4475
$Comp
L Device:C_Small C?
U 1 1 5CF0E614
P 7825 4575
AR Path="/5CACEBF5/5CF0E614" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0E614" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0E614" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0E614" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0E614" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0E614" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0E614" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0E614" Ref="C?"  Part="1" 
AR Path="/5CF0E614" Ref="C42"  Part="1" 
F 0 "C42" H 7917 4621 50  0000 L CNN
F 1 "2.2 uF" H 7917 4530 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7825 4575 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7825 4575 50  0001 C CNN
	1    7825 4575
	1    0    0    -1  
$EndComp
Connection ~ 7825 4675
Wire Wire Line
	7375 4675 7825 4675
Wire Wire Line
	7375 4475 7825 4475
Connection ~ 7375 4475
$Comp
L Device:C_Small C?
U 1 1 5CF0E61F
P 7375 4575
AR Path="/5CACEBF5/5CF0E61F" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0E61F" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0E61F" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0E61F" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0E61F" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0E61F" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0E61F" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0E61F" Ref="C?"  Part="1" 
AR Path="/5CF0E61F" Ref="C41"  Part="1" 
F 0 "C41" H 7467 4621 50  0000 L CNN
F 1 "2.2 uF" H 7467 4530 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7375 4575 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7375 4575 50  0001 C CNN
	1    7375 4575
	1    0    0    -1  
$EndComp
Connection ~ 7375 4675
Wire Wire Line
	6975 4675 7375 4675
Wire Wire Line
	6975 4475 7375 4475
Connection ~ 6975 4475
$Comp
L Device:C_Small C?
U 1 1 5CF0E62A
P 6975 4575
AR Path="/5CACEBF5/5CF0E62A" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0E62A" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0E62A" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0E62A" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0E62A" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0E62A" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0E62A" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0E62A" Ref="C?"  Part="1" 
AR Path="/5CF0E62A" Ref="C40"  Part="1" 
F 0 "C40" H 7067 4621 50  0000 L CNN
F 1 "2.2 uF" H 7067 4530 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6975 4575 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6975 4575 50  0001 C CNN
	1    6975 4575
	1    0    0    -1  
$EndComp
Connection ~ 6975 4675
Wire Wire Line
	6525 4675 6975 4675
Wire Wire Line
	6525 4475 6975 4475
Connection ~ 6525 4475
$Comp
L Device:C_Small C?
U 1 1 5CF0E635
P 6525 4575
AR Path="/5CACEBF5/5CF0E635" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0E635" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0E635" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0E635" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0E635" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0E635" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0E635" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0E635" Ref="C?"  Part="1" 
AR Path="/5CF0E635" Ref="C39"  Part="1" 
F 0 "C39" H 6617 4621 50  0000 L CNN
F 1 "2.2 uF" H 6617 4530 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6525 4575 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6525 4575 50  0001 C CNN
	1    6525 4575
	1    0    0    -1  
$EndComp
Connection ~ 6525 4675
Wire Wire Line
	6150 4675 6525 4675
Wire Wire Line
	6150 4475 6525 4475
Connection ~ 6150 4475
$Comp
L Device:C_Small C?
U 1 1 5CF0E640
P 6150 4575
AR Path="/5CACEBF5/5CF0E640" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0E640" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0E640" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0E640" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0E640" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0E640" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0E640" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0E640" Ref="C?"  Part="1" 
AR Path="/5CF0E640" Ref="C38"  Part="1" 
F 0 "C38" H 6242 4621 50  0000 L CNN
F 1 "2.2 uF" H 6242 4530 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6150 4575 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6150 4575 50  0001 C CNN
	1    6150 4575
	1    0    0    -1  
$EndComp
Connection ~ 6150 4675
Wire Wire Line
	5800 4675 6150 4675
Connection ~ 5800 4475
$Comp
L Device:C_Small C?
U 1 1 5CF0E64C
P 5800 4575
AR Path="/5CACEBF5/5CF0E64C" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF0E64C" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF0E64C" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF0E64C" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF0E64C" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF0E64C" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF0E64C" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF0E64C" Ref="C?"  Part="1" 
AR Path="/5CF0E64C" Ref="C37"  Part="1" 
F 0 "C37" H 5892 4621 50  0000 L CNN
F 1 "2.2 uF" H 5892 4530 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 5800 4575 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 5800 4575 50  0001 C CNN
	1    5800 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 2300 5475 2825
Wire Wire Line
	5475 2300 5775 2300
Wire Wire Line
	5475 3875 5775 3875
Connection ~ 5475 3875
Wire Wire Line
	5475 3875 5475 4475
Wire Wire Line
	5475 3375 5775 3375
Connection ~ 5475 3375
Wire Wire Line
	5475 3375 5475 3875
Wire Wire Line
	5475 2825 5750 2825
Connection ~ 5475 2825
Wire Wire Line
	5475 2825 5475 3375
Wire Wire Line
	8625 2500 8625 3025
Wire Wire Line
	8225 4675 8625 4675
Connection ~ 8625 3575
Wire Wire Line
	8625 3575 8625 4075
Connection ~ 8625 4075
Wire Wire Line
	8625 4075 8625 4675
Wire Wire Line
	8175 3025 8625 3025
Connection ~ 8625 3025
Wire Wire Line
	8625 3025 8625 3575
Wire Wire Line
	5800 4475 6150 4475
Wire Wire Line
	5475 4475 5800 4475
Wire Wire Line
	5475 2300 5475 2075
Wire Wire Line
	5475 2075 3950 2075
Connection ~ 5475 2300
Connection ~ 3950 2075
Wire Wire Line
	3925 5125 8625 5125
Wire Wire Line
	8625 5125 8625 4675
Wire Wire Line
	3925 2875 3925 3450
Connection ~ 3925 3450
Wire Wire Line
	3925 3450 3925 5125
Connection ~ 8625 4675
Wire Wire Line
	8150 1975 8575 1975
$Comp
L Device:C_Small C?
U 1 1 5CF5083F
P 8150 1875
AR Path="/5CACEBF5/5CF5083F" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF5083F" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF5083F" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF5083F" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF5083F" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF5083F" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF5083F" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF5083F" Ref="C?"  Part="1" 
AR Path="/5CF5083F" Ref="C8"  Part="1" 
F 0 "C8" H 8242 1921 50  0000 L CNN
F 1 "2.2 uF" H 8242 1830 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 8150 1875 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 8150 1875 50  0001 C CNN
	1    8150 1875
	1    0    0    -1  
$EndComp
Connection ~ 8150 1975
Connection ~ 7300 1775
$Comp
L Device:C_Small C?
U 1 1 5CF50855
P 7300 1875
AR Path="/5CACEBF5/5CF50855" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF50855" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF50855" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF50855" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF50855" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF50855" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF50855" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF50855" Ref="C?"  Part="1" 
AR Path="/5CF50855" Ref="C7"  Part="1" 
F 0 "C7" H 7392 1921 50  0000 L CNN
F 1 "2.2 uF" H 7392 1830 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7300 1875 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7300 1875 50  0001 C CNN
	1    7300 1875
	1    0    0    -1  
$EndComp
Connection ~ 7300 1975
Connection ~ 6075 1775
$Comp
L Device:C_Small C?
U 1 1 5CF50876
P 6075 1875
AR Path="/5CACEBF5/5CF50876" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF50876" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF50876" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF50876" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF50876" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF50876" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF50876" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF50876" Ref="C?"  Part="1" 
AR Path="/5CF50876" Ref="C6"  Part="1" 
F 0 "C6" H 6167 1921 50  0000 L CNN
F 1 "2.2 uF" H 6167 1830 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6075 1875 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6075 1875 50  0001 C CNN
	1    6075 1875
	1    0    0    -1  
$EndComp
Connection ~ 6075 1975
Wire Wire Line
	8575 1975 8575 2500
Connection ~ 8575 2500
Wire Wire Line
	8575 2500 8625 2500
Connection ~ 5475 2075
$Comp
L Device:C_Small C?
U 1 1 5CF6A57C
P 6500 1875
AR Path="/5CACEBF5/5CF6A57C" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF6A57C" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF6A57C" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF6A57C" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF6A57C" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF6A57C" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF6A57C" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF6A57C" Ref="C?"  Part="1" 
AR Path="/5CF6A57C" Ref="C5"  Part="1" 
F 0 "C5" H 6592 1921 50  0000 L CNN
F 1 "2.2 uF" H 6592 1830 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6500 1875 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6500 1875 50  0001 C CNN
	1    6500 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 1775 5475 2075
$Comp
L Device:C_Small C?
U 1 1 5CF8E079
P 7975 1875
AR Path="/5CACEBF5/5CF8E079" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF8E079" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF8E079" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF8E079" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF8E079" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF8E079" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF8E079" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF8E079" Ref="C?"  Part="1" 
AR Path="/5CF8E079" Ref="C4"  Part="1" 
F 0 "C4" H 8067 1921 50  0000 L CNN
F 1 "2.2 uF" H 8067 1830 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7975 1875 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7975 1875 50  0001 C CNN
	1    7975 1875
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CF8E08F
P 6950 1875
AR Path="/5CACEBF5/5CF8E08F" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF8E08F" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF8E08F" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF8E08F" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF8E08F" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF8E08F" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF8E08F" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF8E08F" Ref="C?"  Part="1" 
AR Path="/5CF8E08F" Ref="C3"  Part="1" 
F 0 "C3" H 7042 1921 50  0000 L CNN
F 1 "2.2 uF" H 7042 1830 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 6950 1875 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 6950 1875 50  0001 C CNN
	1    6950 1875
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CF8E09A
P 5825 1875
AR Path="/5CACEBF5/5CF8E09A" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF8E09A" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF8E09A" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF8E09A" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF8E09A" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF8E09A" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF8E09A" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF8E09A" Ref="C?"  Part="1" 
AR Path="/5CF8E09A" Ref="C2"  Part="1" 
F 0 "C2" H 5917 1921 50  0000 L CNN
F 1 "2.2 uF" H 5917 1830 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 5825 1875 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 5825 1875 50  0001 C CNN
	1    5825 1875
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5CF8E0A6
P 7625 1875
AR Path="/5CACEBF5/5CF8E0A6" Ref="C?"  Part="1" 
AR Path="/5CFFD7A4/5CF8E0A6" Ref="C?"  Part="1" 
AR Path="/5CFFDB58/5CF8E0A6" Ref="C?"  Part="1" 
AR Path="/5CFFDB5E/5CF8E0A6" Ref="C?"  Part="1" 
AR Path="/5D65F129/5CF8E0A6" Ref="C?"  Part="1" 
AR Path="/5D65F554/5CF8E0A6" Ref="C?"  Part="1" 
AR Path="/5D65F965/5CF8E0A6" Ref="C?"  Part="1" 
AR Path="/5D66274B/5CF8E0A6" Ref="C?"  Part="1" 
AR Path="/5CF8E0A6" Ref="C1"  Part="1" 
F 0 "C1" H 7717 1921 50  0000 L CNN
F 1 "2.2 uF" H 7717 1830 50  0000 L CNN
F 2 "user_dc:C_2220_Sm" H 7625 1875 50  0001 C CNN
F 3 "https://product.tdk.com/en/search/capacitor/ceramic/mlcc/info?part_no=C5750X6S2W225K250KA" H 7625 1875 50  0001 C CNN
	1    7625 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 1775 5825 1775
Wire Wire Line
	6075 1775 6500 1775
Wire Wire Line
	6075 1975 6500 1975
Wire Wire Line
	7300 1775 7625 1775
Wire Wire Line
	7300 1975 7625 1975
Connection ~ 6500 1775
Wire Wire Line
	6500 1775 6950 1775
Connection ~ 6500 1975
Wire Wire Line
	6500 1975 6950 1975
Connection ~ 6950 1775
Wire Wire Line
	6950 1775 7300 1775
Connection ~ 6950 1975
Wire Wire Line
	6950 1975 7300 1975
Connection ~ 5825 1775
Wire Wire Line
	5825 1775 6075 1775
Wire Wire Line
	5825 1975 6075 1975
Connection ~ 7625 1775
Wire Wire Line
	7625 1775 7975 1775
Connection ~ 7625 1975
Wire Wire Line
	7625 1975 7975 1975
Connection ~ 7975 1775
Wire Wire Line
	7975 1775 8150 1775
Connection ~ 7975 1975
Wire Wire Line
	7975 1975 8150 1975
$EndSCHEMATC
