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
L Regulator_Linear:L7912 U4
U 1 1 5EFBC8D5
P 2950 1100
F 0 "U4" H 2950 951 50  0000 C CNN
F 1 "L7912" H 2950 860 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2950 900 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/c9/16/86/41/c7/2b/45/f2/CD00000450.pdf/files/CD00000450.pdf/jcr:content/translations/en.CD00000450.pdf" H 2950 1100 50  0001 C CNN
	1    2950 1100
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0101
U 1 1 5EFC0411
P 3400 1100
F 0 "#PWR0101" H 3400 1200 50  0001 C CNN
F 1 "-12V" V 3415 1228 50  0000 L CNN
F 2 "" H 3400 1100 50  0001 C CNN
F 3 "" H 3400 1100 50  0001 C CNN
	1    3400 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 1100 2300 1100
Wire Wire Line
	1050 950  1050 800 
Wire Wire Line
	1050 1350 1050 1400
Wire Wire Line
	1050 1400 1650 1400
Connection ~ 2300 1100
Wire Wire Line
	2300 1100 1950 1100
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5EFD69EB
P 2150 1850
F 0 "U2" H 2150 2092 50  0000 C CNN
F 1 "L7805" H 2150 2001 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2175 1700 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2150 1800 50  0001 C CNN
	1    2150 1850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7812 U5
U 1 1 5EFD838D
P 3400 1850
F 0 "U5" H 3400 2092 50  0000 C CNN
F 1 "L7812" H 3400 2001 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3425 1700 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 3400 1800 50  0001 C CNN
	1    3400 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5EFD8F47
P 3400 900
F 0 "C7" H 3285 854 50  0000 R CNN
F 1 "0.1 μF" H 3285 945 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 3438 750 50  0001 C CNN
F 3 "~" H 3400 900 50  0001 C CNN
	1    3400 900 
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 1550 3100 1850
Wire Wire Line
	1850 1850 1850 1550
Connection ~ 1850 1550
Wire Wire Line
	1850 1550 3100 1550
$Comp
L power:GND #PWR0102
U 1 1 5EFDC436
P 2150 2150
F 0 "#PWR0102" H 2150 1900 50  0001 C CNN
F 1 "GND" H 2155 1977 50  0000 C CNN
F 2 "" H 2150 2150 50  0001 C CNN
F 3 "" H 2150 2150 50  0001 C CNN
	1    2150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5EFDC8E1
P 3400 2150
F 0 "#PWR0103" H 3400 1900 50  0001 C CNN
F 1 "GND" H 3405 1977 50  0000 C CNN
F 2 "" H 3400 2150 50  0001 C CNN
F 3 "" H 3400 2150 50  0001 C CNN
	1    3400 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EFDD1EC
P 2950 800
F 0 "#PWR0104" H 2950 550 50  0001 C CNN
F 1 "GND" H 2955 627 50  0000 C CNN
F 2 "" H 2950 800 50  0001 C CNN
F 3 "" H 2950 800 50  0001 C CNN
	1    2950 800 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EFDE5A0
P 3400 750
F 0 "#PWR0105" H 3400 500 50  0001 C CNN
F 1 "GND" H 3405 577 50  0000 C CNN
F 2 "" H 3400 750 50  0001 C CNN
F 3 "" H 3400 750 50  0001 C CNN
	1    3400 750 
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5EFE612D
P 2650 1850
F 0 "#PWR0106" H 2650 1700 50  0001 C CNN
F 1 "+5V" V 2665 1978 50  0000 L CNN
F 2 "" H 2650 1850 50  0001 C CNN
F 3 "" H 2650 1850 50  0001 C CNN
	1    2650 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 1850 2550 1850
Connection ~ 2550 1850
Wire Wire Line
	2550 1850 2450 1850
$Comp
L Device:C C5
U 1 1 5EFE7797
P 2550 2050
F 0 "C5" H 2665 2096 50  0000 L CNN
F 1 "0.1 μF" H 2665 2005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2588 1900 50  0001 C CNN
F 3 "~" H 2550 2050 50  0001 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0107
U 1 1 5EFE7F67
P 3850 1850
F 0 "#PWR0107" H 3850 1700 50  0001 C CNN
F 1 "+12V" V 3865 1978 50  0000 L CNN
F 2 "" H 3850 1850 50  0001 C CNN
F 3 "" H 3850 1850 50  0001 C CNN
	1    3850 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 1850 3800 1850
$Comp
L Device:C C9
U 1 1 5EFE8C06
P 3800 2050
F 0 "C9" H 3915 2096 50  0000 L CNN
F 1 "0.1 μF" H 3915 2005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 3838 1900 50  0001 C CNN
F 3 "~" H 3800 2050 50  0001 C CNN
	1    3800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1850 2550 1900
Wire Wire Line
	3800 1900 3800 1850
Connection ~ 3800 1850
Wire Wire Line
	3800 1850 3700 1850
$Comp
L power:GND #PWR0108
U 1 1 5EFECC33
P 1450 1850
F 0 "#PWR0108" H 1450 1600 50  0001 C CNN
F 1 "GND" H 1455 1677 50  0000 C CNN
F 2 "" H 1450 1850 50  0001 C CNN
F 3 "" H 1450 1850 50  0001 C CNN
	1    1450 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5EFED39E
P 2550 2200
F 0 "#PWR0109" H 2550 1950 50  0001 C CNN
F 1 "GND" H 2555 2027 50  0000 C CNN
F 2 "" H 2550 2200 50  0001 C CNN
F 3 "" H 2550 2200 50  0001 C CNN
	1    2550 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5EFEDE24
P 3800 2200
F 0 "#PWR0110" H 3800 1950 50  0001 C CNN
F 1 "GND" H 3805 2027 50  0000 C CNN
F 2 "" H 3800 2200 50  0001 C CNN
F 3 "" H 3800 2200 50  0001 C CNN
	1    3800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5EFDDF96
P 2300 750
F 0 "#PWR0111" H 2300 500 50  0001 C CNN
F 1 "GND" H 2305 577 50  0000 C CNN
F 2 "" H 2300 750 50  0001 C CNN
F 3 "" H 2300 750 50  0001 C CNN
	1    2300 750 
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 1100 2300 1050
Wire Wire Line
	3250 1100 3400 1100
Wire Wire Line
	3400 1050 3400 1100
Connection ~ 3400 1100
Wire Wire Line
	1050 800  1650 800 
Wire Wire Line
	1350 1100 1350 1550
$Comp
L Device:D_Bridge_+-AA D1
U 1 1 5EFCE5F5
P 1650 1100
F 0 "D1" H 1306 1054 50  0000 R CNN
F 1 "D_Bridge_+-AA" H 1306 1145 50  0000 R CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 1650 1100 50  0001 C CNN
F 3 "~" H 1650 1100 50  0001 C CNN
	1    1650 1100
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0112
U 1 1 5EFFE0A6
P 950 3000
F 0 "#PWR0112" H 950 2850 50  0001 C CNN
F 1 "+12V" V 965 3128 50  0000 L CNN
F 2 "" H 950 3000 50  0001 C CNN
F 3 "" H 950 3000 50  0001 C CNN
	1    950  3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F000EDF
P 1100 3000
F 0 "R1" V 895 3000 50  0000 C CNN
F 1 "60 Ω" V 986 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1140 2990 50  0001 C CNN
F 3 "~" H 1100 3000 50  0001 C CNN
	1    1100 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5F002896
P 1250 3250
F 0 "C1" H 1365 3296 50  0000 L CNN
F 1 "1000 μF" H 1365 3205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 1288 3100 50  0001 C CNN
F 3 "~" H 1250 3250 50  0001 C CNN
	1    1250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3000 1250 3100
$Comp
L Device:R_US R2
U 1 1 5F00343D
P 2850 3150
F 0 "R2" H 2918 3196 50  0000 L CNN
F 1 "9K Ω" H 2918 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2890 3140 50  0001 C CNN
F 3 "~" H 2850 3150 50  0001 C CNN
	1    2850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3300 2850 3800
Wire Wire Line
	2850 3800 2650 3800
Wire Wire Line
	1350 1550 1450 1550
$Comp
L Device:CP C2
U 1 1 5F00E111
P 1450 1700
F 0 "C2" H 1568 1746 50  0000 L CNN
F 1 "5000 μF" H 1568 1655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D16.0mm_P7.50mm" H 1488 1550 50  0001 C CNN
F 3 "~" H 1450 1700 50  0001 C CNN
	1    1450 1700
	1    0    0    -1  
$EndComp
Connection ~ 1450 1550
Wire Wire Line
	1450 1550 1850 1550
$Comp
L Device:CP C4
U 1 1 5F00EA1F
P 2300 900
F 0 "C4" H 2418 946 50  0000 L CNN
F 1 "5000 μF" H 2418 855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D16.0mm_P7.50mm" H 2338 750 50  0001 C CNN
F 3 "~" H 2300 900 50  0001 C CNN
	1    2300 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3000 1600 3000
Connection ~ 1250 3000
Wire Wire Line
	1650 3600 1450 3600
Wire Wire Line
	1450 3600 1450 4400
Wire Wire Line
	1450 4400 2850 4400
$Comp
L Transformer:ADT1-1WT TR1
U 1 1 5F0166A6
P 850 1150
F 0 "TR1" H 850 1531 50  0000 C CNN
F 1 "ADT1-1WT" H 850 1440 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-6-5.08_1x06_P5.08mm_Horizontal" H 850 800 50  0001 C CNN
F 3 "https://www.minicircuits.com/pdfs/ADT1-1WT+.pdf" H 850 1150 50  0001 C CNN
	1    850  1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5EFFC7A3
P 1050 1150
F 0 "#PWR0113" H 1050 900 50  0001 C CNN
F 1 "GND" V 1055 1022 50  0000 R CNN
F 2 "" H 1050 1150 50  0001 C CNN
F 3 "" H 1050 1150 50  0001 C CNN
	1    1050 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1650 4000 1600 4000
Wire Wire Line
	1600 4000 1600 3000
Connection ~ 1600 3000
Wire Wire Line
	2850 4100 2850 4400
$Comp
L Timer:NA555P U3
U 1 1 5F006B78
P 2150 3800
F 0 "U3" H 2150 4381 50  0000 C CNN
F 1 "NA555P" H 2150 4290 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2800 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 3000 3400 50  0001 C CNN
	1    2150 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3600 1450 3350
Wire Wire Line
	1450 3350 2750 3350
Wire Wire Line
	2750 3350 2750 4000
Wire Wire Line
	2750 4000 2650 4000
Connection ~ 1450 3600
Wire Wire Line
	2150 4200 2150 4600
Wire Wire Line
	2150 4600 3200 4600
Wire Wire Line
	2150 4600 1750 4600
Connection ~ 2150 4600
$Comp
L Device:C C3
U 1 1 5F03103E
P 1750 4400
F 0 "C3" H 1865 4446 50  0000 L CNN
F 1 "8.2 nF" H 1865 4355 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 1788 4250 50  0001 C CNN
F 3 "~" H 1750 4400 50  0001 C CNN
	1    1750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4000 2750 4250
Wire Wire Line
	2750 4250 1750 4250
Connection ~ 2750 4000
Wire Wire Line
	1250 3400 1250 4600
Wire Wire Line
	1750 4550 1750 4600
Connection ~ 1750 4600
Wire Wire Line
	1750 4600 1250 4600
$Comp
L power:GND #PWR0114
U 1 1 5F0349AE
P 3200 4600
F 0 "#PWR0114" H 3200 4350 50  0001 C CNN
F 1 "GND" H 3205 4427 50  0000 C CNN
F 2 "" H 3200 4600 50  0001 C CNN
F 3 "" H 3200 4600 50  0001 C CNN
	1    3200 4600
	-1   0    0    1   
$EndComp
Connection ~ 3200 4600
Wire Wire Line
	3200 4600 3500 4600
$Comp
L Device:R_US R6
U 1 1 5F0395E7
P 4100 3900
F 0 "R6" H 4168 3946 50  0000 L CNN
F 1 "10K Ω" H 4168 3855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4140 3890 50  0001 C CNN
F 3 "~" H 4100 3900 50  0001 C CNN
	1    4100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3600 4100 3750
$Comp
L Device:R_US R7
U 1 1 5F03BD8B
P 4100 4400
F 0 "R7" H 4168 4446 50  0000 L CNN
F 1 "10K Ω" H 4168 4355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4140 4390 50  0001 C CNN
F 3 "~" H 4100 4400 50  0001 C CNN
	1    4100 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F03C2E7
P 4100 4550
F 0 "#PWR0115" H 4100 4300 50  0001 C CNN
F 1 "GND" H 4105 4377 50  0000 C CNN
F 2 "" H 4100 4550 50  0001 C CNN
F 3 "" H 4100 4550 50  0001 C CNN
	1    4100 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4050 4100 4150
Wire Wire Line
	4100 4150 5100 4150
Connection ~ 4100 4150
Wire Wire Line
	4100 4150 4100 4250
$Comp
L power:+12V #PWR0116
U 1 1 5F03E9CE
P 1150 6100
F 0 "#PWR0116" H 1150 5950 50  0001 C CNN
F 1 "+12V" V 1165 6228 50  0000 L CNN
F 2 "" H 1150 6100 50  0001 C CNN
F 3 "" H 1150 6100 50  0001 C CNN
	1    1150 6100
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5F03F90C
P 1450 6100
F 0 "U1" H 1450 6342 50  0000 C CNN
F 1 "L7805" H 1450 6251 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1475 5950 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1450 6050 50  0001 C CNN
	1    1450 6100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5F047081
P 3700 4100
F 0 "J3" H 3780 4092 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 3780 4001 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 3700 4100 50  0001 C CNN
F 3 "~" H 3700 4100 50  0001 C CNN
	1    3700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4200 3500 4600
Wire Wire Line
	1950 6400 1700 6400
$Comp
L Device:C C6
U 1 1 5F0513A3
P 2700 5650
F 0 "C6" V 2952 5650 50  0000 C CNN
F 1 "0.1 μF" V 2861 5650 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2738 5500 50  0001 C CNN
F 3 "~" H 2700 5650 50  0001 C CNN
	1    2700 5650
	0    -1   -1   0   
$EndComp
$Comp
L Amplifier_Instrumentation:AD620 U6
U 1 1 5F051931
P 4050 5850
F 0 "U6" H 4494 5896 50  0000 L CNN
F 1 "AD620" H 4494 5805 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4050 5850 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD620.pdf" H 4050 5850 50  0001 C CNN
	1    4050 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5F052E27
P 3250 5900
F 0 "J2" H 3168 5575 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 3168 5666 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 3250 5900 50  0001 C CNN
F 3 "~" H 3250 5900 50  0001 C CNN
	1    3250 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 5800 3650 5800
Wire Wire Line
	3650 5800 3650 5750
Wire Wire Line
	3450 5900 3650 5900
Wire Wire Line
	3650 5900 3650 5950
$Comp
L Device:R_POT RV1
U 1 1 5F056822
P 3350 4100
F 0 "RV1" V 3235 4100 50  0000 C CNN
F 1 "50K Ω" V 3144 4100 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3266Y_Vertical" H 3350 4100 50  0001 C CNN
F 3 "~" H 3350 4100 50  0001 C CNN
	1    3350 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 6200 1850 6200
Wire Wire Line
	1850 6200 1850 5650
Wire Wire Line
	1850 5650 2550 5650
Wire Wire Line
	3950 5550 3950 5300
$Comp
L power:+12V #PWR0117
U 1 1 5F06260E
P 3950 5300
F 0 "#PWR0117" H 3950 5150 50  0001 C CNN
F 1 "+12V" H 3965 5473 50  0000 C CNN
F 2 "" H 3950 5300 50  0001 C CNN
F 3 "" H 3950 5300 50  0001 C CNN
	1    3950 5300
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR0118
U 1 1 5F062C61
P 3950 6350
F 0 "#PWR0118" H 3950 6450 50  0001 C CNN
F 1 "-12V" H 3965 6523 50  0000 C CNN
F 2 "" H 3950 6350 50  0001 C CNN
F 3 "" H 3950 6350 50  0001 C CNN
	1    3950 6350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 6350 3950 6150
$Comp
L power:GND #PWR0119
U 1 1 5F067DFD
P 4300 6150
F 0 "#PWR0119" H 4300 5900 50  0001 C CNN
F 1 "GND" V 4305 6022 50  0000 R CNN
F 2 "" H 4300 6150 50  0001 C CNN
F 3 "" H 4300 6150 50  0001 C CNN
	1    4300 6150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 6150 4300 6150
Wire Wire Line
	2850 5650 3450 5650
$Comp
L Device:C C8
U 1 1 5F06E5F9
P 3500 5900
F 0 "C8" H 3615 5946 50  0000 L CNN
F 1 "68 PF" H 3615 5855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 3538 5750 50  0001 C CNN
F 3 "~" H 3500 5900 50  0001 C CNN
	1    3500 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 5750 3500 5650
Connection ~ 3500 5650
Wire Wire Line
	3500 5650 3650 5650
Wire Wire Line
	3500 6050 3550 6050
Wire Wire Line
	3550 6050 3550 6150
Connection ~ 3550 6050
Wire Wire Line
	3550 6050 3650 6050
$Comp
L Device:R_US R5
U 1 1 5F073A9D
P 3550 6300
F 0 "R5" H 3618 6346 50  0000 L CNN
F 1 "1M Ω" H 3618 6255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3590 6290 50  0001 C CNN
F 3 "~" H 3550 6300 50  0001 C CNN
	1    3550 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F074251
P 3550 6450
F 0 "#PWR0120" H 3550 6200 50  0001 C CNN
F 1 "GND" H 3555 6277 50  0000 C CNN
F 2 "" H 3550 6450 50  0001 C CNN
F 3 "" H 3550 6450 50  0001 C CNN
	1    3550 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5650 3450 5300
Connection ~ 3450 5650
Wire Wire Line
	3450 5650 3500 5650
$Comp
L power:GND #PWR0121
U 1 1 5F077381
P 3450 5000
F 0 "#PWR0121" H 3450 4750 50  0001 C CNN
F 1 "GND" H 3455 4827 50  0000 C CNN
F 2 "" H 3450 5000 50  0001 C CNN
F 3 "" H 3450 5000 50  0001 C CNN
	1    3450 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C10
U 1 1 5F077A3A
P 4900 5850
F 0 "C10" V 4648 5850 50  0000 C CNN
F 1 "0.1 μF" V 4739 5850 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 4938 5700 50  0001 C CNN
F 3 "~" H 4900 5850 50  0001 C CNN
	1    4900 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 5850 5100 5850
Wire Wire Line
	4450 5850 4750 5850
$Comp
L Device:R_US R8
U 1 1 5F07BADD
P 5100 6000
F 0 "R8" H 5168 6046 50  0000 L CNN
F 1 "6K Ω" H 5168 5955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5140 5990 50  0001 C CNN
F 3 "~" H 5100 6000 50  0001 C CNN
	1    5100 6000
	1    0    0    -1  
$EndComp
Connection ~ 5100 5850
$Comp
L power:GND #PWR0122
U 1 1 5F07CAC7
P 5100 6150
F 0 "#PWR0122" H 5100 5900 50  0001 C CNN
F 1 "GND" H 5105 5977 50  0000 C CNN
F 2 "" H 5100 6150 50  0001 C CNN
F 3 "" H 5100 6150 50  0001 C CNN
	1    5100 6150
	1    0    0    -1  
$EndComp
$Comp
L Analog:AD630ARZ U7
U 1 1 5F07CEE7
P 6800 4300
F 0 "U7" V 6754 5144 50  0000 L CNN
F 1 "AD630ARZ" V 6845 5144 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 6800 3250 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ad630.pdf" H 6400 5400 50  0001 C CNN
	1    6800 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3450 5100 4150
Wire Wire Line
	5400 3450 6600 3450
Wire Wire Line
	6600 3450 6600 3700
Wire Wire Line
	6600 3450 6600 3300
Connection ~ 6600 3450
$Comp
L Device:R_US R10
U 1 1 5F08DFA7
P 6600 3150
F 0 "R10" H 6668 3196 50  0000 L CNN
F 1 "100K Ω" H 6668 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6640 3140 50  0001 C CNN
F 3 "~" H 6600 3150 50  0001 C CNN
	1    6600 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5F090D52
P 6600 3000
F 0 "#PWR0123" H 6600 2750 50  0001 C CNN
F 1 "GND" H 6605 2827 50  0000 C CNN
F 2 "" H 6600 3000 50  0001 C CNN
F 3 "" H 6600 3000 50  0001 C CNN
	1    6600 3000
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0124
U 1 1 5F0918C3
P 7600 4300
F 0 "#PWR0124" H 7600 4150 50  0001 C CNN
F 1 "+12V" V 7615 4428 50  0000 L CNN
F 2 "" H 7600 4300 50  0001 C CNN
F 3 "" H 7600 4300 50  0001 C CNN
	1    7600 4300
	0    1    1    0   
$EndComp
$Comp
L power:-12V #PWR0125
U 1 1 5F094827
P 6000 4300
F 0 "#PWR0125" H 6000 4400 50  0001 C CNN
F 1 "-12V" V 6015 4428 50  0000 L CNN
F 2 "" H 6000 4300 50  0001 C CNN
F 3 "" H 6000 4300 50  0001 C CNN
	1    6000 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 4900 6600 5000
Wire Wire Line
	6600 5000 7750 5000
Wire Wire Line
	7750 5000 7750 3550
Wire Wire Line
	7750 3550 7200 3550
Wire Wire Line
	6800 3550 6800 3700
Wire Wire Line
	7200 3700 7200 3550
Connection ~ 7200 3550
Wire Wire Line
	7200 3550 6800 3550
Wire Wire Line
	6700 5850 6700 5250
Wire Wire Line
	5100 5850 6700 5850
Wire Wire Line
	6700 5250 7650 5250
Wire Wire Line
	7650 5250 7650 3600
Wire Wire Line
	7650 3600 7400 3600
Wire Wire Line
	7400 3600 7400 3700
Connection ~ 6700 5250
Wire Wire Line
	6700 5250 6700 4900
Wire Wire Line
	7000 3700 7000 3400
$Comp
L power:GND #PWR0126
U 1 1 5F0A12DB
P 7000 3400
F 0 "#PWR0126" H 7000 3150 50  0001 C CNN
F 1 "GND" H 7005 3227 50  0000 C CNN
F 2 "" H 7000 3400 50  0001 C CNN
F 3 "" H 7000 3400 50  0001 C CNN
	1    7000 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 3700 6500 3600
Wire Wire Line
	6500 3600 6200 3600
Wire Wire Line
	6200 3600 6200 3250
$Comp
L Device:R_US R9
U 1 1 5F0A4FBE
P 6200 3100
F 0 "R9" H 6132 3054 50  0000 R CNN
F 1 "100K Ω" H 6132 3145 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6240 3090 50  0001 C CNN
F 3 "~" H 6200 3100 50  0001 C CNN
	1    6200 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5F0AA419
P 6200 2950
F 0 "#PWR0127" H 6200 2700 50  0001 C CNN
F 1 "GND" H 6205 2777 50  0000 C CNN
F 2 "" H 6200 2950 50  0001 C CNN
F 3 "" H 6200 2950 50  0001 C CNN
	1    6200 2950
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 4900 7000 5600
Wire Wire Line
	7000 5600 9100 5600
Wire Wire Line
	9100 5600 9100 3900
$Comp
L Device:R_US R12
U 1 1 5F0AD904
P 9100 3750
F 0 "R12" H 9168 3796 50  0000 L CNN
F 1 "220K Ω" H 9168 3705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9140 3740 50  0001 C CNN
F 3 "~" H 9100 3750 50  0001 C CNN
	1    9100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3600 9100 3450
$Comp
L Device:C C14
U 1 1 5F0AED12
P 8950 3450
F 0 "C14" V 8698 3450 50  0000 C CNN
F 1 "2.2 μF" V 8789 3450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 8988 3300 50  0001 C CNN
F 3 "~" H 8950 3450 50  0001 C CNN
	1    8950 3450
	0    1    1    0   
$EndComp
Connection ~ 9100 3450
$Comp
L power:GND #PWR0128
U 1 1 5F0AFB94
P 8800 3450
F 0 "#PWR0128" H 8800 3200 50  0001 C CNN
F 1 "GND" V 8805 3322 50  0000 R CNN
F 2 "" H 8800 3450 50  0001 C CNN
F 3 "" H 8800 3450 50  0001 C CNN
	1    8800 3450
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Instrumentation:AD620 U8
U 1 1 5F0B0318
P 8200 1750
F 0 "U8" H 8644 1704 50  0000 L CNN
F 1 "AD620" H 8644 1795 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8200 1750 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD620.pdf" H 8200 1750 50  0001 C CNN
	1    8200 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 1550 8600 1550
Wire Wire Line
	9100 1550 9100 3450
Wire Wire Line
	8600 1950 8600 2100
$Comp
L power:GND #PWR0129
U 1 1 5F0BB2F5
P 8600 2100
F 0 "#PWR0129" H 8600 1850 50  0001 C CNN
F 1 "GND" H 8605 1927 50  0000 C CNN
F 2 "" H 8600 2100 50  0001 C CNN
F 3 "" H 8600 2100 50  0001 C CNN
	1    8600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1750 7400 1750
$Comp
L power:+12V #PWR0130
U 1 1 5F0BF4E3
P 8300 2450
F 0 "#PWR0130" H 8300 2300 50  0001 C CNN
F 1 "+12V" H 8315 2623 50  0000 C CNN
F 2 "" H 8300 2450 50  0001 C CNN
F 3 "" H 8300 2450 50  0001 C CNN
	1    8300 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 2450 8300 2300
$Comp
L Device:Varistor_US RV2
U 1 1 5F0C323B
P 8950 1800
F 0 "RV2" H 9053 1846 50  0000 L CNN
F 1 "10K Ω" H 9053 1755 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3266Y_Vertical" V 8880 1800 50  0001 C CNN
F 3 "~" H 8950 1800 50  0001 C CNN
	1    8950 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R11
U 1 1 5F0C4724
P 8850 2050
F 0 "R11" V 8645 2050 50  0000 C CNN
F 1 "50 Ω" V 8736 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8890 2040 50  0001 C CNN
F 3 "~" H 8850 2050 50  0001 C CNN
	1    8850 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 1850 8700 1850
Wire Wire Line
	8700 1850 8700 2050
Wire Wire Line
	9000 2050 9000 1950
Wire Wire Line
	9000 1950 8950 1950
Wire Wire Line
	8950 1650 8600 1650
$Comp
L Device:C C13
U 1 1 5F0CF09C
P 8100 2300
F 0 "C13" V 7848 2300 50  0000 C CNN
F 1 "0.1 μF" V 7939 2300 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8138 2150 50  0001 C CNN
F 3 "~" H 8100 2300 50  0001 C CNN
	1    8100 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 2300 8250 2300
Connection ~ 8300 2300
Wire Wire Line
	8300 2300 8300 2050
$Comp
L power:GND #PWR0131
U 1 1 5F0D5AD9
P 7950 2300
F 0 "#PWR0131" H 7950 2050 50  0001 C CNN
F 1 "GND" V 7955 2172 50  0000 R CNN
F 2 "" H 7950 2300 50  0001 C CNN
F 3 "" H 7950 2300 50  0001 C CNN
	1    7950 2300
	0    1    1    0   
$EndComp
$Comp
L power:-12V #PWR0132
U 1 1 5F0D66FA
P 8300 1200
F 0 "#PWR0132" H 8300 1300 50  0001 C CNN
F 1 "-12V" H 8315 1373 50  0000 C CNN
F 2 "" H 8300 1200 50  0001 C CNN
F 3 "" H 8300 1200 50  0001 C CNN
	1    8300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1200 8300 1250
$Comp
L Device:C C12
U 1 1 5F0DA65D
P 8100 1250
F 0 "C12" V 7848 1250 50  0000 C CNN
F 1 "0.1 μF" V 7939 1250 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8138 1100 50  0001 C CNN
F 3 "~" H 8100 1250 50  0001 C CNN
	1    8100 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 1250 8250 1250
Connection ~ 8300 1250
Wire Wire Line
	8300 1250 8300 1450
$Comp
L power:GND #PWR0133
U 1 1 5F0DE0AD
P 7950 1250
F 0 "#PWR0133" H 7950 1000 50  0001 C CNN
F 1 "GND" V 7955 1122 50  0000 R CNN
F 2 "" H 7950 1250 50  0001 C CNN
F 3 "" H 7950 1250 50  0001 C CNN
	1    7950 1250
	0    1    1    0   
$EndComp
Connection ~ 2850 3800
$Comp
L Device:R_US R3
U 1 1 5F011736
P 2850 3950
F 0 "R3" H 2918 3996 50  0000 L CNN
F 1 "90K Ω" H 2918 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2890 3940 50  0001 C CNN
F 3 "~" H 2850 3950 50  0001 C CNN
	1    2850 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F08775F
P 5250 3450
F 0 "C11" V 4998 3450 50  0000 C CNN
F 1 "0.1 μF" V 5089 3450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 5288 3300 50  0001 C CNN
F 3 "~" H 5250 3450 50  0001 C CNN
	1    5250 3450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5F0E7E79
P 1700 6400
F 0 "#PWR0134" H 1700 6150 50  0001 C CNN
F 1 "GND" H 1705 6227 50  0000 C CNN
F 2 "" H 1700 6400 50  0001 C CNN
F 3 "" H 1700 6400 50  0001 C CNN
	1    1700 6400
	1    0    0    -1  
$EndComp
Connection ~ 1700 6400
Wire Wire Line
	1700 6400 1450 6400
$Comp
L Device:R_US R4
U 1 1 5F07698C
P 3450 5150
F 0 "R4" H 3518 5196 50  0000 L CNN
F 1 "1M Ω" H 3518 5105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3490 5140 50  0001 C CNN
F 3 "~" H 3450 5150 50  0001 C CNN
	1    3450 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3000 2150 3000
Wire Wire Line
	2150 3400 2150 3000
Connection ~ 2150 3000
Wire Wire Line
	2150 3000 2850 3000
NoConn ~ 3200 4100
NoConn ~ 7300 3700
NoConn ~ 6900 3700
NoConn ~ 6300 3700
NoConn ~ 6200 3700
NoConn ~ 6200 4900
NoConn ~ 6300 4900
NoConn ~ 6500 4900
NoConn ~ 6800 4900
NoConn ~ 7300 4900
NoConn ~ 650  950 
NoConn ~ 650  1350
NoConn ~ 1650 3800
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5F1DA957
P 7200 1750
F 0 "J4" H 7118 1425 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 7118 1516 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-2-5.08_1x02_P5.08mm_Horizontal" H 7200 1750 50  0001 C CNN
F 3 "~" H 7200 1750 50  0001 C CNN
	1    7200 1750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5F1E004C
P 7400 1650
F 0 "#PWR01" H 7400 1400 50  0001 C CNN
F 1 "GND" V 7405 1522 50  0000 R CNN
F 2 "" H 7400 1650 50  0001 C CNN
F 3 "" H 7400 1650 50  0001 C CNN
	1    7400 1650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:USB_A J1
U 1 1 5F1E5AED
P 2450 6200
F 0 "J1" H 2220 6189 50  0000 R CNN
F 1 "USB_A" H 2220 6098 50  0000 R CNN
F 2 "Connector_USB:USB_A_Molex_105057_Vertical" H 2600 6150 50  0001 C CNN
F 3 " ~" H 2600 6150 50  0001 C CNN
	1    2450 6200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2450 6600 1950 6600
Wire Wire Line
	1950 6600 1950 6400
Wire Wire Line
	2550 6600 2450 6600
Connection ~ 2450 6600
Wire Wire Line
	1750 6100 2150 6100
Wire Wire Line
	2150 6100 2150 6200
Wire Wire Line
	2150 6300 1950 6300
Wire Wire Line
	1950 6300 1950 6200
NoConn ~ 2150 6000
NoConn ~ 100  5200
Wire Wire Line
	2650 3600 3350 3600
$Comp
L Device:R_US R13
U 1 1 5F074DA2
P 3350 3800
F 0 "R13" H 3418 3846 50  0000 L CNN
F 1 "1K Ω" H 3418 3755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3390 3790 50  0001 C CNN
F 3 "~" H 3350 3800 50  0001 C CNN
	1    3350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3650 3350 3600
Connection ~ 3350 3600
Wire Wire Line
	3350 3600 4100 3600
$Comp
L Connector:Screw_Terminal_01x04 J5
U 1 1 5F07DAF3
P 4800 900
F 0 "J5" V 4764 612 50  0000 R CNN
F 1 "Screw_Terminal_01x04" V 4673 612 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-3-4-5.08_1x04_P5.08mm_Horizontal" H 4800 900 50  0001 C CNN
F 3 "~" H 4800 900 50  0001 C CNN
	1    4800 900 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R14
U 1 1 5F09063F
P 4700 1250
F 0 "R14" H 4768 1296 50  0000 L CNN
F 1 "300 Ω" H 4768 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4740 1240 50  0001 C CNN
F 3 "~" H 4700 1250 50  0001 C CNN
	1    4700 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5F09142C
P 4700 1400
F 0 "#PWR02" H 4700 1250 50  0001 C CNN
F 1 "+5V" H 4715 1573 50  0000 C CNN
F 2 "" H 4700 1400 50  0001 C CNN
F 3 "" H 4700 1400 50  0001 C CNN
	1    4700 1400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5F091E98
P 4800 1100
F 0 "#PWR03" H 4800 950 50  0001 C CNN
F 1 "+5V" H 4815 1273 50  0000 C CNN
F 2 "" H 4800 1100 50  0001 C CNN
F 3 "" H 4800 1100 50  0001 C CNN
	1    4800 1100
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR04
U 1 1 5F092BE1
P 4900 1100
F 0 "#PWR04" H 4900 950 50  0001 C CNN
F 1 "+12V" H 4915 1273 50  0000 C CNN
F 2 "" H 4900 1100 50  0001 C CNN
F 3 "" H 4900 1100 50  0001 C CNN
	1    4900 1100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F0937D1
P 5000 1100
F 0 "#PWR05" H 5000 850 50  0001 C CNN
F 1 "GND" H 5005 927 50  0000 C CNN
F 2 "" H 5000 1100 50  0001 C CNN
F 3 "" H 5000 1100 50  0001 C CNN
	1    5000 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1A3F7B
P 8100 1450
F 0 "#PWR?" H 8100 1200 50  0001 C CNN
F 1 "GND" V 8105 1322 50  0000 R CNN
F 2 "" H 8100 1450 50  0001 C CNN
F 3 "" H 8100 1450 50  0001 C CNN
	1    8100 1450
	0    1    1    0   
$EndComp
$EndSCHEMATC
