EESchema Schematic File Version 4
LIBS:GR_Relay_Matrix-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title "Relay Matrix"
Date "2022-03-15"
Rev "1.0"
Comp "Gadget Reboot"
Comment1 "https://www.youtube.com/gadgetreboot"
Comment2 "https://github.com/GadgetReboot/Relay_Matrix"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1425 875  1450 1925
U 62037087
F0 "X1_Routing" 50
F1 "XY_Routing.sch" 50
F2 "V+Relay" U L 1425 975 50 
F3 "X_Reset_A" I L 1425 1175 50 
F4 "X_Set_A" I L 1425 1250 50 
F5 "X_Reset_B" I L 1425 1375 50 
F6 "X_Set_B" I L 1425 1450 50 
F7 "X_Path" I L 1425 2450 50 
F8 "Y1_2_Reset" I L 1425 1575 50 
F9 "Y1_2_Set" I L 1425 1650 50 
F10 "Y3_4_Reset" I L 1425 1775 50 
F11 "Y3_4_Set" I L 1425 1850 50 
F12 "Y5_6_Reset" I L 1425 1975 50 
F13 "Y5_6_Set" I L 1425 2050 50 
F14 "Y2_Path" I R 2875 1350 50 
F15 "Y3_Path" I R 2875 1500 50 
F16 "Y4_Path" I R 2875 1650 50 
F17 "Y5_Path" I R 2875 1800 50 
F18 "Y6_Path" I R 2875 1950 50 
F19 "Exit_Path" I R 2875 2100 50 
$EndSheet
$Comp
L power:Vdrive #PWR01
U 1 1 6204464B
P 1300 750
F 0 "#PWR01" H 1100 600 50  0001 C CNN
F 1 "Vdrive" H 1317 923 50  0001 C CNN
F 2 "" H 1300 750 50  0001 C CNN
F 3 "" H 1300 750 50  0001 C CNN
	1    1300 750 
	1    0    0    -1  
$EndComp
Text Notes 1150 625  0    50   ~ 0
V+ Relay
Wire Wire Line
	1425 975  1300 975 
Wire Wire Line
	1300 975  1300 750 
Wire Wire Line
	1425 1175 800  1175
Text Label 800  1175 0    50   ~ 0
X1_Reset_A
Wire Wire Line
	1425 1250 800  1250
Text Label 800  1250 0    50   ~ 0
X1_Set_A
Wire Wire Line
	1425 1375 800  1375
Text Label 800  1375 0    50   ~ 0
X1_Reset_B
Wire Wire Line
	1425 1450 800  1450
Text Label 800  1450 0    50   ~ 0
X1_Set_B
Wire Wire Line
	1425 1575 800  1575
Text Label 800  1575 0    50   ~ 0
Y1_2_Reset
Wire Wire Line
	1425 1650 800  1650
Text Label 800  1650 0    50   ~ 0
Y1_2_Set
Wire Wire Line
	1425 1775 800  1775
Text Label 800  1775 0    50   ~ 0
Y3_4_Reset
Wire Wire Line
	1425 1850 800  1850
Text Label 800  1850 0    50   ~ 0
Y3_4_Set
Wire Wire Line
	1425 1975 800  1975
Text Label 800  1975 0    50   ~ 0
Y5_6_Reset
Wire Wire Line
	1425 2050 800  2050
Text Label 800  2050 0    50   ~ 0
Y5_6_Set
Wire Wire Line
	1425 2450 800  2450
Text Label 800  2450 0    50   ~ 0
Main_In
Wire Wire Line
	3500 1350 2875 1350
Text Label 3200 1350 0    50   ~ 0
Y2_Path
Wire Wire Line
	3500 1500 2875 1500
Text Label 3200 1500 0    50   ~ 0
Y3_Path
Wire Wire Line
	3500 1650 2875 1650
Text Label 3200 1650 0    50   ~ 0
Y4_Path
Wire Wire Line
	3500 1800 2875 1800
Text Label 3200 1800 0    50   ~ 0
Y5_Path
Wire Wire Line
	3500 1950 2875 1950
Text Label 3200 1950 0    50   ~ 0
Y6_Path
$Sheet
S 1425 3375 1450 1925
U 6241D2E0
F0 "X2_Routing" 50
F1 "XY_Routing.sch" 50
F2 "V+Relay" U L 1425 3475 50 
F3 "X_Reset_A" I L 1425 3675 50 
F4 "X_Set_A" I L 1425 3750 50 
F5 "X_Reset_B" I L 1425 3875 50 
F6 "X_Set_B" I L 1425 3950 50 
F7 "X_Path" I L 1425 4950 50 
F8 "Y1_2_Reset" I L 1425 4075 50 
F9 "Y1_2_Set" I L 1425 4150 50 
F10 "Y3_4_Reset" I L 1425 4275 50 
F11 "Y3_4_Set" I L 1425 4350 50 
F12 "Y5_6_Reset" I L 1425 4475 50 
F13 "Y5_6_Set" I L 1425 4550 50 
F14 "Y2_Path" I R 2875 3850 50 
F15 "Y3_Path" I R 2875 4000 50 
F16 "Y4_Path" I R 2875 4150 50 
F17 "Y5_Path" I R 2875 4300 50 
F18 "Y6_Path" I R 2875 4450 50 
F19 "Exit_Path" I R 2875 4600 50 
$EndSheet
$Comp
L power:Vdrive #PWR02
U 1 1 6241D2F0
P 1300 3250
F 0 "#PWR02" H 1100 3100 50  0001 C CNN
F 1 "Vdrive" H 1317 3423 50  0001 C CNN
F 2 "" H 1300 3250 50  0001 C CNN
F 3 "" H 1300 3250 50  0001 C CNN
	1    1300 3250
	1    0    0    -1  
$EndComp
Text Notes 1150 3125 0    50   ~ 0
V+ Relay
Wire Wire Line
	1425 3475 1300 3475
Wire Wire Line
	1300 3475 1300 3250
Wire Wire Line
	1425 3675 800  3675
Text Label 800  3675 0    50   ~ 0
X2_Reset_A
Wire Wire Line
	1425 3750 800  3750
Text Label 800  3750 0    50   ~ 0
X2_Set_A
Wire Wire Line
	1425 3875 800  3875
Text Label 800  3875 0    50   ~ 0
X2_Reset_B
Wire Wire Line
	1425 3950 800  3950
Text Label 800  3950 0    50   ~ 0
X2_Set_B
Wire Wire Line
	1425 4275 800  4275
Text Label 800  4275 0    50   ~ 0
Y9_10_Reset
Wire Wire Line
	1425 4350 800  4350
Text Label 800  4350 0    50   ~ 0
Y9_10_Set
Wire Wire Line
	1425 4475 800  4475
Text Label 800  4475 0    50   ~ 0
Y11_12_Reset
Wire Wire Line
	1425 4550 800  4550
Text Label 800  4550 0    50   ~ 0
Y11_12_Set
Wire Wire Line
	4450 1575 3825 1575
Text Label 3825 1575 0    50   ~ 0
Y13_14_Reset
Wire Wire Line
	4450 1650 3825 1650
Text Label 3825 1650 0    50   ~ 0
Y13_14_Set
Wire Wire Line
	1425 4950 800  4950
Text Label 800  4950 0    50   ~ 0
X2_Path
Wire Wire Line
	3500 4000 2875 4000
Text Label 3200 4000 0    50   ~ 0
Y3_Path
Wire Wire Line
	3500 4150 2875 4150
Text Label 3200 4150 0    50   ~ 0
Y4_Path
Wire Wire Line
	3500 4300 2875 4300
Text Label 3200 4300 0    50   ~ 0
Y5_Path
Wire Wire Line
	3500 4450 2875 4450
Text Label 3200 4450 0    50   ~ 0
Y6_Path
$Sheet
S 4450 875  1450 1925
U 62421122
F0 "X3_Routing" 50
F1 "XY_Routing.sch" 50
F2 "V+Relay" U L 4450 975 50 
F3 "X_Reset_A" I L 4450 1175 50 
F4 "X_Set_A" I L 4450 1250 50 
F5 "X_Reset_B" I L 4450 1375 50 
F6 "X_Set_B" I L 4450 1450 50 
F7 "X_Path" I L 4450 2450 50 
F8 "Y1_2_Reset" I L 4450 1575 50 
F9 "Y1_2_Set" I L 4450 1650 50 
F10 "Y3_4_Reset" I L 4450 1775 50 
F11 "Y3_4_Set" I L 4450 1850 50 
F12 "Y5_6_Reset" I L 4450 1975 50 
F13 "Y5_6_Set" I L 4450 2050 50 
F14 "Y2_Path" I R 5900 1350 50 
F15 "Y3_Path" I R 5900 1500 50 
F16 "Y4_Path" I R 5900 1650 50 
F17 "Y5_Path" I R 5900 1800 50 
F18 "Y6_Path" I R 5900 1950 50 
F19 "Exit_Path" I R 5900 2100 50 
$EndSheet
$Comp
L power:Vdrive #PWR05
U 1 1 62421132
P 4325 750
F 0 "#PWR05" H 4125 600 50  0001 C CNN
F 1 "Vdrive" H 4342 923 50  0001 C CNN
F 2 "" H 4325 750 50  0001 C CNN
F 3 "" H 4325 750 50  0001 C CNN
	1    4325 750 
	1    0    0    -1  
$EndComp
Text Notes 4175 625  0    50   ~ 0
V+ Relay
Wire Wire Line
	4450 975  4325 975 
Wire Wire Line
	4325 975  4325 750 
Wire Wire Line
	4450 1175 3825 1175
Text Label 3825 1175 0    50   ~ 0
X3_Reset_A
Wire Wire Line
	4450 1250 3825 1250
Text Label 3825 1250 0    50   ~ 0
X3_Set_A
Wire Wire Line
	4450 1375 3825 1375
Text Label 3825 1375 0    50   ~ 0
X3_Reset_B
Wire Wire Line
	4450 1450 3825 1450
Text Label 3825 1450 0    50   ~ 0
X3_Set_B
Wire Wire Line
	4450 1975 3825 1975
Text Label 3825 1975 0    50   ~ 0
Y17_18_Reset
Wire Wire Line
	4450 2050 3825 2050
Text Label 3825 2050 0    50   ~ 0
Y17_18_Set
Wire Wire Line
	4450 4075 3825 4075
Text Label 3825 4075 0    50   ~ 0
Y19_20_Reset
Wire Wire Line
	4450 4150 3825 4150
Text Label 3825 4150 0    50   ~ 0
Y19_20_Set
Wire Wire Line
	4450 4275 3825 4275
Text Label 3825 4275 0    50   ~ 0
Y21_22_Reset
Wire Wire Line
	4450 4350 3825 4350
Text Label 3825 4350 0    50   ~ 0
Y21_22_Set
Wire Wire Line
	4450 4475 3825 4475
Text Label 3825 4475 0    50   ~ 0
Y23_24_Reset
Wire Wire Line
	4450 4550 3825 4550
Text Label 3825 4550 0    50   ~ 0
Y23_24_Set
Wire Wire Line
	4450 2450 3825 2450
Text Label 3825 2450 0    50   ~ 0
X3_Path
Wire Wire Line
	6525 1350 5900 1350
Text Label 6225 1350 0    50   ~ 0
Y2_Path
Wire Wire Line
	6525 1650 5900 1650
Text Label 6225 1650 0    50   ~ 0
Y4_Path
Wire Wire Line
	6525 1800 5900 1800
Text Label 6225 1800 0    50   ~ 0
Y5_Path
Wire Wire Line
	6525 1950 5900 1950
Text Label 6225 1950 0    50   ~ 0
Y6_Path
$Sheet
S 4450 3375 1450 1925
U 6242117E
F0 "X4_Routing" 50
F1 "XY_Routing.sch" 50
F2 "V+Relay" U L 4450 3475 50 
F3 "X_Reset_A" I L 4450 3675 50 
F4 "X_Set_A" I L 4450 3750 50 
F5 "X_Reset_B" I L 4450 3875 50 
F6 "X_Set_B" I L 4450 3950 50 
F7 "X_Path" I L 4450 4950 50 
F8 "Y1_2_Reset" I L 4450 4075 50 
F9 "Y1_2_Set" I L 4450 4150 50 
F10 "Y3_4_Reset" I L 4450 4275 50 
F11 "Y3_4_Set" I L 4450 4350 50 
F12 "Y5_6_Reset" I L 4450 4475 50 
F13 "Y5_6_Set" I L 4450 4550 50 
F14 "Y2_Path" I R 5900 3850 50 
F15 "Y3_Path" I R 5900 4000 50 
F16 "Y4_Path" I R 5900 4150 50 
F17 "Y5_Path" I R 5900 4300 50 
F18 "Y6_Path" I R 5900 4450 50 
F19 "Exit_Path" I R 5900 4600 50 
$EndSheet
$Comp
L power:Vdrive #PWR06
U 1 1 6242118E
P 4325 3250
F 0 "#PWR06" H 4125 3100 50  0001 C CNN
F 1 "Vdrive" H 4342 3423 50  0001 C CNN
F 2 "" H 4325 3250 50  0001 C CNN
F 3 "" H 4325 3250 50  0001 C CNN
	1    4325 3250
	1    0    0    -1  
$EndComp
Text Notes 4175 3125 0    50   ~ 0
V+ Relay
Wire Wire Line
	4450 3475 4325 3475
Wire Wire Line
	4325 3475 4325 3250
Wire Wire Line
	4450 3675 3825 3675
Text Label 3825 3675 0    50   ~ 0
X4_Reset_A
Wire Wire Line
	4450 3750 3825 3750
Text Label 3825 3750 0    50   ~ 0
X4_Set_A
Wire Wire Line
	4450 3875 3825 3875
Text Label 3825 3875 0    50   ~ 0
X4_Reset_B
Wire Wire Line
	4450 3950 3825 3950
Text Label 3825 3950 0    50   ~ 0
X4_Set_B
Wire Wire Line
	7500 1600 6875 1600
Text Label 6875 1600 0    50   ~ 0
Y25_26_Reset
Wire Wire Line
	7500 1675 6875 1675
Text Label 6875 1675 0    50   ~ 0
Y25_26_Set
Wire Wire Line
	7500 1800 6875 1800
Text Label 6875 1800 0    50   ~ 0
Y27_28_Reset
Wire Wire Line
	7500 1875 6875 1875
Text Label 6875 1875 0    50   ~ 0
Y27_28_Set
Wire Wire Line
	7500 2000 6875 2000
Text Label 6875 2000 0    50   ~ 0
Y29_30_Reset
Wire Wire Line
	7500 2075 6875 2075
Text Label 6875 2075 0    50   ~ 0
Y29_30_Set
Wire Wire Line
	4450 4950 3825 4950
Text Label 3825 4950 0    50   ~ 0
X4_Path
Wire Wire Line
	6525 3850 5900 3850
Text Label 6225 3850 0    50   ~ 0
Y2_Path
Wire Wire Line
	6525 4000 5900 4000
Text Label 6225 4000 0    50   ~ 0
Y3_Path
Wire Wire Line
	6525 4300 5900 4300
Text Label 6225 4300 0    50   ~ 0
Y5_Path
Wire Wire Line
	6525 4450 5900 4450
Text Label 6225 4450 0    50   ~ 0
Y6_Path
$Sheet
S 7500 900  1450 1925
U 6243C00A
F0 "X5_Routing" 50
F1 "XY_Routing.sch" 50
F2 "V+Relay" U L 7500 1000 50 
F3 "X_Reset_A" I L 7500 1200 50 
F4 "X_Set_A" I L 7500 1275 50 
F5 "X_Reset_B" I L 7500 1400 50 
F6 "X_Set_B" I L 7500 1475 50 
F7 "X_Path" I L 7500 2475 50 
F8 "Y1_2_Reset" I L 7500 1600 50 
F9 "Y1_2_Set" I L 7500 1675 50 
F10 "Y3_4_Reset" I L 7500 1800 50 
F11 "Y3_4_Set" I L 7500 1875 50 
F12 "Y5_6_Reset" I L 7500 2000 50 
F13 "Y5_6_Set" I L 7500 2075 50 
F14 "Y2_Path" I R 8950 1375 50 
F15 "Y3_Path" I R 8950 1525 50 
F16 "Y4_Path" I R 8950 1675 50 
F17 "Y5_Path" I R 8950 1825 50 
F18 "Y6_Path" I R 8950 1975 50 
F19 "Exit_Path" I R 8950 2125 50 
$EndSheet
$Comp
L power:Vdrive #PWR07
U 1 1 6243C01A
P 7375 775
F 0 "#PWR07" H 7175 625 50  0001 C CNN
F 1 "Vdrive" H 7392 948 50  0001 C CNN
F 2 "" H 7375 775 50  0001 C CNN
F 3 "" H 7375 775 50  0001 C CNN
	1    7375 775 
	1    0    0    -1  
$EndComp
Text Notes 7225 650  0    50   ~ 0
V+ Relay
Wire Wire Line
	7500 1000 7375 1000
Wire Wire Line
	7375 1000 7375 775 
Wire Wire Line
	7500 1200 6875 1200
Text Label 6875 1200 0    50   ~ 0
X5_Reset_A
Wire Wire Line
	7500 1275 6875 1275
Text Label 6875 1275 0    50   ~ 0
X5_Set_A
Wire Wire Line
	7500 1400 6875 1400
Text Label 6875 1400 0    50   ~ 0
X5_Reset_B
Wire Wire Line
	7500 1475 6875 1475
Text Label 6875 1475 0    50   ~ 0
X5_Set_B
Wire Wire Line
	7500 4300 6875 4300
Text Label 6875 4300 0    50   ~ 0
Y33_34_Reset
Wire Wire Line
	7500 4375 6875 4375
Text Label 6875 4375 0    50   ~ 0
Y33_34_Set
Wire Wire Line
	7500 4500 6875 4500
Text Label 6875 4500 0    50   ~ 0
Y35_36_Reset
Wire Wire Line
	7500 4575 6875 4575
Text Label 6875 4575 0    50   ~ 0
Y35_36_Set
Wire Wire Line
	7500 4100 6875 4100
Text Label 6875 4100 0    50   ~ 0
Y31_32_Reset
Wire Wire Line
	7500 4175 6875 4175
Text Label 6875 4175 0    50   ~ 0
Y31_32_Set
Wire Wire Line
	7500 2475 6875 2475
Text Label 6875 2475 0    50   ~ 0
X5_Path
Wire Wire Line
	9575 1375 8950 1375
Text Label 9275 1375 0    50   ~ 0
Y2_Path
Wire Wire Line
	9575 1525 8950 1525
Text Label 9275 1525 0    50   ~ 0
Y3_Path
Wire Wire Line
	9575 1675 8950 1675
Text Label 9275 1675 0    50   ~ 0
Y4_Path
Wire Wire Line
	9575 1975 8950 1975
Text Label 9275 1975 0    50   ~ 0
Y6_Path
$Sheet
S 7500 3400 1450 1925
U 6243C066
F0 "X6_Routing" 50
F1 "XY_Routing.sch" 50
F2 "V+Relay" U L 7500 3500 50 
F3 "X_Reset_A" I L 7500 3700 50 
F4 "X_Set_A" I L 7500 3775 50 
F5 "X_Reset_B" I L 7500 3900 50 
F6 "X_Set_B" I L 7500 3975 50 
F7 "X_Path" I L 7500 4975 50 
F8 "Y1_2_Reset" I L 7500 4100 50 
F9 "Y1_2_Set" I L 7500 4175 50 
F10 "Y3_4_Reset" I L 7500 4300 50 
F11 "Y3_4_Set" I L 7500 4375 50 
F12 "Y5_6_Reset" I L 7500 4500 50 
F13 "Y5_6_Set" I L 7500 4575 50 
F14 "Y2_Path" I R 8950 3875 50 
F15 "Y3_Path" I R 8950 4025 50 
F16 "Y4_Path" I R 8950 4175 50 
F17 "Y5_Path" I R 8950 4325 50 
F18 "Y6_Path" I R 8950 4475 50 
F19 "Exit_Path" I R 8950 4625 50 
$EndSheet
$Comp
L power:Vdrive #PWR08
U 1 1 6243C076
P 7375 3275
F 0 "#PWR08" H 7175 3125 50  0001 C CNN
F 1 "Vdrive" H 7392 3448 50  0001 C CNN
F 2 "" H 7375 3275 50  0001 C CNN
F 3 "" H 7375 3275 50  0001 C CNN
	1    7375 3275
	1    0    0    -1  
$EndComp
Text Notes 7225 3150 0    50   ~ 0
V+ Relay
Wire Wire Line
	7500 3500 7375 3500
Wire Wire Line
	7375 3500 7375 3275
Wire Wire Line
	7500 3700 6875 3700
Text Label 6875 3700 0    50   ~ 0
X6_Reset_A
Wire Wire Line
	7500 3775 6875 3775
Text Label 6875 3775 0    50   ~ 0
X6_Set_A
Wire Wire Line
	7500 3900 6875 3900
Text Label 6875 3900 0    50   ~ 0
X6_Reset_B
Wire Wire Line
	7500 3975 6875 3975
Text Label 6875 3975 0    50   ~ 0
X6_Set_B
Wire Wire Line
	7500 4975 6875 4975
Text Label 6875 4975 0    50   ~ 0
X6_Path
Wire Wire Line
	9575 3875 8950 3875
Text Label 9275 3875 0    50   ~ 0
Y2_Path
Wire Wire Line
	9575 4025 8950 4025
Text Label 9275 4025 0    50   ~ 0
Y3_Path
Wire Wire Line
	9575 4175 8950 4175
Text Label 9275 4175 0    50   ~ 0
Y4_Path
Wire Wire Line
	9575 4325 8950 4325
Text Label 9275 4325 0    50   ~ 0
Y5_Path
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J4
U 1 1 624B33C6
P 3775 6625
F 0 "J4" V 3825 5837 50  0000 R CNN
F 1 "Conn_02x15_Odd_Even" H 3825 7451 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x15_P2.54mm_Vertical" H 3775 6625 50  0001 C CNN
F 3 "~" H 3775 6625 50  0001 C CNN
	1    3775 6625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 6825 1400 7450
Text Label 1400 7450 1    50   ~ 0
X1_Reset_A
Wire Wire Line
	1400 5700 1400 6325
Text Label 1400 6325 1    50   ~ 0
X1_Set_A
Wire Wire Line
	1500 6825 1500 7450
Text Label 1500 7450 1    50   ~ 0
X1_Reset_B
Wire Wire Line
	1500 5700 1500 6325
Text Label 1500 6325 1    50   ~ 0
X1_Set_B
Wire Wire Line
	1600 6825 1600 7450
Text Label 1600 7450 1    50   ~ 0
Y1_2_Reset
Wire Wire Line
	1600 5700 1600 6325
Text Label 1600 6325 1    50   ~ 0
Y1_2_Set
Wire Wire Line
	1700 6825 1700 7450
Text Label 1700 7450 1    50   ~ 0
Y3_4_Reset
Wire Wire Line
	1700 5700 1700 6325
Text Label 1700 6325 1    50   ~ 0
Y3_4_Set
Wire Wire Line
	1800 6825 1800 7450
Text Label 1800 7450 1    50   ~ 0
Y5_6_Reset
Wire Wire Line
	1800 5700 1800 6325
Text Label 1800 6325 1    50   ~ 0
Y5_6_Set
Wire Wire Line
	2100 6825 2100 7450
Text Label 2100 7450 1    50   ~ 0
Y7_8_Reset
Wire Wire Line
	2100 5700 2100 6325
Text Label 2100 6325 1    50   ~ 0
Y7_8_Set
Wire Wire Line
	1900 6825 1900 7450
Text Label 1900 7450 1    50   ~ 0
X2_Reset_A
Wire Wire Line
	1900 5700 1900 6325
Text Label 1900 6325 1    50   ~ 0
X2_Set_A
Wire Wire Line
	2000 6825 2000 7450
Text Label 2000 7450 1    50   ~ 0
X2_Reset_B
Wire Wire Line
	2000 5700 2000 6325
Text Label 2000 6325 1    50   ~ 0
X2_Set_B
Wire Wire Line
	2200 6825 2200 7450
Text Label 2200 7450 1    50   ~ 0
Y9_10_Reset
Wire Wire Line
	2200 5700 2200 6325
Text Label 2200 6325 1    50   ~ 0
Y9_10_Set
Wire Wire Line
	2300 6825 2300 7450
Text Label 2300 7450 1    50   ~ 0
Y11_12_Reset
Wire Wire Line
	2300 5700 2300 6325
Text Label 2300 6325 1    50   ~ 0
Y11_12_Set
Wire Wire Line
	2600 6825 2600 7450
Text Label 2600 7450 1    50   ~ 0
Y13_14_Reset
Wire Wire Line
	2600 5700 2600 6325
Text Label 2600 6325 1    50   ~ 0
Y13_14_Set
Wire Wire Line
	2700 6825 2700 7450
Text Label 2700 7450 1    50   ~ 0
Y15_16_Reset
Wire Wire Line
	2700 5700 2700 6325
Text Label 2700 6325 1    50   ~ 0
Y15_16_Set
Wire Wire Line
	2400 6825 2400 7450
Text Label 2400 7450 1    50   ~ 0
X3_Reset_A
Wire Wire Line
	2400 5700 2400 6325
Text Label 2400 6325 1    50   ~ 0
X3_Set_A
Wire Wire Line
	2500 6825 2500 7450
Text Label 2500 7450 1    50   ~ 0
X3_Reset_B
Wire Wire Line
	2500 5700 2500 6325
Text Label 2500 6325 1    50   ~ 0
X3_Set_B
Wire Wire Line
	2800 6825 2800 7450
Text Label 2800 7450 1    50   ~ 0
Y17_18_Reset
Wire Wire Line
	2800 5700 2800 6325
Text Label 2800 6325 1    50   ~ 0
Y17_18_Set
Wire Wire Line
	3275 6825 3275 7450
Text Label 3275 7450 1    50   ~ 0
Y19_20_Reset
Wire Wire Line
	3275 5700 3275 6325
Text Label 3275 6325 1    50   ~ 0
Y19_20_Set
Wire Wire Line
	3375 6825 3375 7450
Text Label 3375 7450 1    50   ~ 0
Y21_22_Reset
Wire Wire Line
	3375 5700 3375 6325
Text Label 3375 6325 1    50   ~ 0
Y21_22_Set
Wire Wire Line
	3475 6825 3475 7450
Text Label 3475 7450 1    50   ~ 0
Y23_24_Reset
Wire Wire Line
	3475 5700 3475 6325
Text Label 3475 6325 1    50   ~ 0
Y23_24_Set
Wire Wire Line
	3075 6825 3075 7450
Text Label 3075 7450 1    50   ~ 0
X4_Reset_A
Wire Wire Line
	3075 5700 3075 6325
Text Label 3075 6325 1    50   ~ 0
X4_Set_A
Wire Wire Line
	3175 6825 3175 7450
Text Label 3175 7450 1    50   ~ 0
X4_Reset_B
Wire Wire Line
	3175 5700 3175 6325
Text Label 3175 6325 1    50   ~ 0
X4_Set_B
Wire Wire Line
	3775 6825 3775 7450
Text Label 3775 7450 1    50   ~ 0
Y25_26_Reset
Wire Wire Line
	3775 5700 3775 6325
Text Label 3775 6325 1    50   ~ 0
Y25_26_Set
Wire Wire Line
	3875 6825 3875 7450
Text Label 3875 7450 1    50   ~ 0
Y27_28_Reset
Wire Wire Line
	3875 5700 3875 6325
Text Label 3875 6325 1    50   ~ 0
Y27_28_Set
Wire Wire Line
	3975 6825 3975 7450
Text Label 3975 7450 1    50   ~ 0
Y29_30_Reset
Wire Wire Line
	3975 5700 3975 6325
Text Label 3975 6325 1    50   ~ 0
Y29_30_Set
Wire Wire Line
	4275 6825 4275 7450
Text Label 4275 7450 1    50   ~ 0
Y31_32_Reset
Wire Wire Line
	4275 5700 4275 6325
Text Label 4275 6325 1    50   ~ 0
Y31_32_Set
Wire Wire Line
	3575 6825 3575 7450
Text Label 3575 7450 1    50   ~ 0
X5_Reset_A
Wire Wire Line
	3575 5700 3575 6325
Text Label 3575 6325 1    50   ~ 0
X5_Set_A
Wire Wire Line
	3675 6825 3675 7450
Text Label 3675 7450 1    50   ~ 0
X5_Reset_B
Wire Wire Line
	3675 5700 3675 6325
Text Label 3675 6325 1    50   ~ 0
X5_Set_B
Wire Wire Line
	4375 6825 4375 7450
Text Label 4375 7450 1    50   ~ 0
Y33_34_Reset
Wire Wire Line
	4375 5700 4375 6325
Text Label 4375 6325 1    50   ~ 0
Y33_34_Set
Wire Wire Line
	4475 6825 4475 7450
Text Label 4475 7450 1    50   ~ 0
Y35_36_Reset
Wire Wire Line
	4475 5700 4475 6325
Text Label 4475 6325 1    50   ~ 0
Y35_36_Set
Wire Wire Line
	4075 6825 4075 7450
Text Label 4075 7450 1    50   ~ 0
X6_Reset_A
Wire Wire Line
	4075 5700 4075 6325
Text Label 4075 6325 1    50   ~ 0
X6_Set_A
Wire Wire Line
	4175 6825 4175 7450
Text Label 4175 7450 1    50   ~ 0
X6_Reset_B
Wire Wire Line
	4175 5700 4175 6325
Text Label 4175 6325 1    50   ~ 0
X6_Set_B
$Comp
L power:GNDREF #PWR09
U 1 1 62EFDB9A
P 5900 6600
F 0 "#PWR09" H 5900 6350 50  0001 C CNN
F 1 "GNDREF" H 5905 6427 50  0001 C CNN
F 2 "" H 5900 6600 50  0001 C CNN
F 3 "" H 5900 6600 50  0001 C CNN
	1    5900 6600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5275 6025 4850 6025
Text Label 4850 6025 0    50   ~ 0
X2_Path
Wire Wire Line
	5275 5925 4850 5925
Text Label 4850 5925 0    50   ~ 0
Main_In
Wire Wire Line
	5275 6225 4850 6225
Text Label 4850 6225 0    50   ~ 0
X4_Path
Wire Wire Line
	5275 6125 4850 6125
Text Label 4850 6125 0    50   ~ 0
X3_Path
Wire Wire Line
	5275 6425 4850 6425
Text Label 4850 6425 0    50   ~ 0
X6_Path
Wire Wire Line
	5275 6325 4850 6325
Text Label 4850 6325 0    50   ~ 0
X5_Path
Wire Wire Line
	5775 6425 5900 6425
Wire Wire Line
	5775 6325 5900 6325
Wire Wire Line
	5900 6325 5900 6425
Connection ~ 5900 6425
Wire Wire Line
	5775 6225 5900 6225
Wire Wire Line
	5900 6225 5900 6325
Connection ~ 5900 6325
Wire Wire Line
	5775 6125 5900 6125
Wire Wire Line
	5900 6125 5900 6225
Connection ~ 5900 6225
Wire Wire Line
	5775 6025 5900 6025
Wire Wire Line
	5900 6025 5900 6125
Connection ~ 5900 6125
Wire Wire Line
	5775 5925 5900 5925
Wire Wire Line
	5900 5925 5900 6025
Connection ~ 5900 6025
$Comp
L power:GNDREF #PWR010
U 1 1 63031155
P 5900 7575
F 0 "#PWR010" H 5900 7325 50  0001 C CNN
F 1 "GNDREF" H 5905 7402 50  0001 C CNN
F 2 "" H 5900 7575 50  0001 C CNN
F 3 "" H 5900 7575 50  0001 C CNN
	1    5900 7575
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5275 6900 4850 6900
Text Label 4850 6900 0    50   ~ 0
Y2_Path
Wire Wire Line
	5275 7100 4850 7100
Text Label 4850 7100 0    50   ~ 0
Y4_Path
Wire Wire Line
	5275 7000 4850 7000
Text Label 4850 7000 0    50   ~ 0
Y3_Path
Wire Wire Line
	5275 7300 4850 7300
Text Label 4850 7300 0    50   ~ 0
Y6_Path
Wire Wire Line
	5275 7200 4850 7200
Text Label 4850 7200 0    50   ~ 0
Y5_Path
Wire Wire Line
	5275 7400 4850 7400
Text Label 4850 7400 0    50   ~ 0
Main_Out
Wire Wire Line
	5775 7400 5900 7400
Wire Wire Line
	5775 7300 5900 7300
Wire Wire Line
	5900 7300 5900 7400
Connection ~ 5900 7400
Wire Wire Line
	5775 7200 5900 7200
Wire Wire Line
	5900 7200 5900 7300
Connection ~ 5900 7300
Wire Wire Line
	5775 7100 5900 7100
Wire Wire Line
	5900 7100 5900 7200
Connection ~ 5900 7200
Wire Wire Line
	5775 7000 5900 7000
Wire Wire Line
	5900 7000 5900 7100
Connection ~ 5900 7100
Wire Wire Line
	5775 6900 5900 6900
Wire Wire Line
	5900 6900 5900 7000
Connection ~ 5900 7000
Text Notes 6000 6275 0    79   ~ 0
X Signal Path
Text Notes 6025 7200 0    79   ~ 0
Y Signal Path
Text Notes 2275 7650 0    79   ~ 0
Relay Control Headers
Text Notes 4675 5575 0    100  ~ 0
Relay Matrix
Wire Wire Line
	1425 4075 800  4075
Text Label 800  4075 0    50   ~ 0
Y7_8_Reset
Wire Wire Line
	1425 4150 800  4150
Text Label 800  4150 0    50   ~ 0
Y7_8_Set
Wire Wire Line
	4450 1775 3825 1775
Text Label 3825 1775 0    50   ~ 0
Y15_16_Reset
Wire Wire Line
	4450 1850 3825 1850
Text Label 3825 1850 0    50   ~ 0
Y15_16_Set
Wire Wire Line
	3500 2100 2875 2100
Text Label 3150 2100 0    50   ~ 0
Main_Out
Wire Wire Line
	6525 2100 5900 2100
Text Label 6175 2100 0    50   ~ 0
Main_Out
Wire Wire Line
	6525 4600 5900 4600
Text Label 6175 4600 0    50   ~ 0
Main_Out
Wire Wire Line
	3500 4600 2875 4600
Text Label 3150 4600 0    50   ~ 0
Main_Out
Wire Wire Line
	9575 2125 8950 2125
Text Label 9225 2125 0    50   ~ 0
Main_Out
Wire Wire Line
	9575 4625 8950 4625
Text Label 9225 4625 0    50   ~ 0
Main_Out
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J3
U 1 1 6379E3BE
P 2100 6625
F 0 "J3" V 2150 5837 50  0000 R CNN
F 1 "Conn_02x15_Odd_Even" H 2150 7451 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x15_P2.54mm_Vertical" H 2100 6625 50  0001 C CNN
F 3 "~" H 2100 6625 50  0001 C CNN
	1    2100 6625
	0    -1   -1   0   
$EndComp
$Comp
L power:Vdrive #PWR04
U 1 1 639BE2A6
P 8300 6025
F 0 "#PWR04" H 8100 5875 50  0001 C CNN
F 1 "Vdrive" H 8317 6198 50  0001 C CNN
F 2 "" H 8300 6025 50  0001 C CNN
F 3 "" H 8300 6025 50  0001 C CNN
	1    8300 6025
	1    0    0    -1  
$EndComp
Text Notes 8150 5900 0    50   ~ 0
V+ Relay
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 639BE2B1
P 8575 6200
AR Path="/639BE2B1" Ref="J2"  Part="1" 
AR Path="/620F645F/639BE2B1" Ref="J?"  Part="1" 
F 0 "J2" H 8550 6325 50  0000 L CNN
F 1 "Conn_01x02" H 8655 6101 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8575 6200 50  0001 C CNN
F 3 "~" H 8575 6200 50  0001 C CNN
	1    8575 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8375 6200 8300 6200
Wire Wire Line
	8300 6025 8300 6200
Wire Wire Line
	8375 6300 8300 6300
Wire Wire Line
	8300 6300 8300 6200
Connection ~ 8300 6200
$Comp
L power:Vdrive #PWR03
U 1 1 639CB686
P 7650 6025
F 0 "#PWR03" H 7450 5875 50  0001 C CNN
F 1 "Vdrive" H 7667 6198 50  0001 C CNN
F 2 "" H 7650 6025 50  0001 C CNN
F 3 "" H 7650 6025 50  0001 C CNN
	1    7650 6025
	1    0    0    -1  
$EndComp
Text Notes 7500 5900 0    50   ~ 0
V+ Relay
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 639CB691
P 7925 6200
AR Path="/639CB691" Ref="J1"  Part="1" 
AR Path="/620F645F/639CB691" Ref="J?"  Part="1" 
F 0 "J1" H 7900 6325 50  0000 L CNN
F 1 "Conn_01x02" H 8005 6101 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7925 6200 50  0001 C CNN
F 3 "~" H 7925 6200 50  0001 C CNN
	1    7925 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7725 6200 7650 6200
Wire Wire Line
	7650 6025 7650 6200
Wire Wire Line
	7725 6300 7650 6300
Wire Wire Line
	7650 6300 7650 6200
Connection ~ 7650 6200
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J5
U 1 1 639D93F1
P 5475 6125
F 0 "J5" H 5525 6450 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 5525 6451 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 5475 6125 50  0001 C CNN
F 3 "~" H 5475 6125 50  0001 C CNN
	1    5475 6125
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J6
U 1 1 639F4E87
P 5475 7100
F 0 "J6" H 5525 7425 50  0000 C CNN
F 1 "Conn_02x06_Odd_Even" H 5525 7426 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x06_P2.54mm_Vertical" H 5475 7100 50  0001 C CNN
F 3 "~" H 5475 7100 50  0001 C CNN
	1    5475 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 6425 5900 6600
Wire Wire Line
	5900 7400 5900 7575
$Comp
L Mechanical:MountingHole MH1
U 1 1 62184080
P 10500 6000
F 0 "MH1" H 10600 6000 50  0000 L CNN
F 1 "MountingHole" H 10600 5955 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10500 6000 50  0001 C CNN
F 3 "~" H 10500 6000 50  0001 C CNN
	1    10500 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH2
U 1 1 62184624
P 10500 6175
F 0 "MH2" H 10600 6175 50  0000 L CNN
F 1 "MountingHole" H 10600 6130 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10500 6175 50  0001 C CNN
F 3 "~" H 10500 6175 50  0001 C CNN
	1    10500 6175
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH3
U 1 1 62186665
P 10850 6000
F 0 "MH3" H 10950 6000 50  0000 L CNN
F 1 "MountingHole" H 10950 5955 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10850 6000 50  0001 C CNN
F 3 "~" H 10850 6000 50  0001 C CNN
	1    10850 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole MH4
U 1 1 6218666F
P 10850 6175
F 0 "MH4" H 10950 6175 50  0000 L CNN
F 1 "MountingHole" H 10950 6130 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10850 6175 50  0001 C CNN
F 3 "~" H 10850 6175 50  0001 C CNN
	1    10850 6175
	1    0    0    -1  
$EndComp
Text Notes 10375 6475 0    79   ~ 0
Mount Holes
$EndSCHEMATC
