EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ATS Remote Schematic"
Date "2021-12-25"
Rev "0.2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ats-remote:PIC18F0xQ40 U2
U 1 1 61C47B82
P 4950 5550
F 0 "U2" V 4100 5900 50  0000 L CNN
F 1 "PIC18F06Q40" V 5800 5450 50  0000 L CNN
F 2 "ats-remote:PIC18F06Q40-SOIC14" H 5800 5900 50  0001 C CNN
F 3 "" H 5800 5900 50  0001 C CNN
	1    4950 5550
	0    1    1    0   
$EndComp
Text GLabel 7650 4750 0    50   Input ~ 0
LORA_SCK
Text GLabel 7650 4850 0    50   Input ~ 0
LORA_MOSI
Text GLabel 7650 4950 0    50   Input ~ 0
LORA_MISO
Text GLabel 7650 5050 0    50   Input ~ 0
LORA_NSS
Text GLabel 8650 5450 2    50   Input ~ 0
LORA_DIO0
Text GLabel 4250 900  0    50   Input ~ 0
YIC_TXD
Text GLabel 4250 1350 0    50   Input ~ 0
YIC_RXD
Text GLabel 4450 5950 0    50   Input ~ 0
YIC_TXD
Text GLabel 4450 6050 0    50   Input ~ 0
YIC_RXD
Text GLabel 5450 6050 2    50   Input ~ 0
LORA_MOSI
Text GLabel 5450 5950 2    50   Input ~ 0
LORA_MISO
Text GLabel 5450 6150 2    50   Input ~ 0
LORA_SCK
$Comp
L power:+3.3V #PWR0101
U 1 1 61D74458
P 8150 4100
F 0 "#PWR0101" H 8150 3950 50  0001 C CNN
F 1 "+3.3V" H 8165 4275 50  0000 C CNN
F 2 "" H 8150 4100 50  0001 C CNN
F 3 "" H 8150 4100 50  0001 C CNN
	1    8150 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61D7517F
P 8050 5800
F 0 "#PWR0102" H 8050 5550 50  0001 C CNN
F 1 "GND" H 8055 5625 50  0000 C CNN
F 2 "" H 8050 5800 50  0001 C CNN
F 3 "" H 8050 5800 50  0001 C CNN
	1    8050 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5650 8050 5750
Wire Wire Line
	8050 5750 8150 5750
Wire Wire Line
	8150 5750 8150 5650
Connection ~ 8050 5750
Wire Wire Line
	8050 5750 8050 5800
Wire Wire Line
	8150 5750 8250 5750
Wire Wire Line
	8250 5750 8250 5650
Connection ~ 8150 5750
$Comp
L power:+3.3V #PWR0103
U 1 1 61D77C6A
P 4400 4200
F 0 "#PWR0103" H 4400 4050 50  0001 C CNN
F 1 "+3.3V" H 4415 4375 50  0000 C CNN
F 2 "" H 4400 4200 50  0001 C CNN
F 3 "" H 4400 4200 50  0001 C CNN
	1    4400 4200
	1    0    0    -1  
$EndComp
Text GLabel 5450 5050 2    50   Input ~ 0
ICSP_DAT
Text GLabel 5450 5150 2    50   Input ~ 0
ICSP_CLK
Text GLabel 3250 5350 0    50   Input ~ 0
ICSP_MCLR
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 61D79812
P 1650 3000
F 0 "J2" H 1622 2975 50  0000 R CNN
F 1 "ICSP" H 1622 2882 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x06_P1.27mm_Vertical" H 1650 3000 50  0001 C CNN
F 3 "~" H 1650 3000 50  0001 C CNN
	1    1650 3000
	-1   0    0    -1  
$EndComp
Text GLabel 1450 2800 0    50   Input ~ 0
ICSP_MCLR
$Comp
L power:+3.3V #PWR0104
U 1 1 61D7C8E2
P 700 2800
F 0 "#PWR0104" H 700 2650 50  0001 C CNN
F 1 "+3.3V" H 715 2975 50  0000 C CNN
F 2 "" H 700 2800 50  0001 C CNN
F 3 "" H 700 2800 50  0001 C CNN
	1    700  2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 61D7D867
P 700 3050
F 0 "#PWR0105" H 700 2800 50  0001 C CNN
F 1 "GND" H 705 2875 50  0000 C CNN
F 2 "" H 700 3050 50  0001 C CNN
F 3 "" H 700 3050 50  0001 C CNN
	1    700  3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3000 700  3000
Wire Wire Line
	700  3000 700  3050
Wire Wire Line
	1450 2900 700  2900
Wire Wire Line
	700  2900 700  2800
NoConn ~ 1450 3300
Text GLabel 1450 3100 0    50   Input ~ 0
ICSP_DAT
Text GLabel 1450 3200 0    50   Input ~ 0
ICSP_CLK
$Comp
L power:GND #PWR0106
U 1 1 61D81150
P 5550 1100
F 0 "#PWR0106" H 5550 850 50  0001 C CNN
F 1 "GND" H 5555 925 50  0000 C CNN
F 2 "" H 5550 1100 50  0001 C CNN
F 3 "" H 5550 1100 50  0001 C CNN
	1    5550 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 61D81E17
P 7550 1500
F 0 "#PWR0107" H 7550 1250 50  0001 C CNN
F 1 "GND" H 7555 1325 50  0000 C CNN
F 2 "" H 7550 1500 50  0001 C CNN
F 3 "" H 7550 1500 50  0001 C CNN
	1    7550 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61D828BC
P 7150 2750
F 0 "#PWR0108" H 7150 2500 50  0001 C CNN
F 1 "GND" H 7155 2575 50  0000 C CNN
F 2 "" H 7150 2750 50  0001 C CNN
F 3 "" H 7150 2750 50  0001 C CNN
	1    7150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2650 7150 2650
Wire Wire Line
	7150 2650 7150 2750
Wire Wire Line
	7000 2450 7150 2450
Wire Wire Line
	7150 2450 7150 2650
Connection ~ 7150 2650
Wire Wire Line
	7550 1450 7550 1500
Wire Wire Line
	5550 1100 5550 1050
Wire Wire Line
	5550 1050 5800 1050
$Comp
L power:+3.3V #PWR0109
U 1 1 61D85BE6
P 4950 2100
F 0 "#PWR0109" H 4950 1950 50  0001 C CNN
F 1 "+3.3V" H 4965 2275 50  0000 C CNN
F 2 "" H 4950 2100 50  0001 C CNN
F 3 "" H 4950 2100 50  0001 C CNN
	1    4950 2100
	1    0    0    -1  
$EndComp
Text GLabel 5450 5250 2    50   Input ~ 0
LORA_DIO0
Text GLabel 4450 6150 0    50   Input ~ 0
LORA_NSS
Text GLabel 4450 5250 0    50   Input ~ 0
STATUS_LED
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 61D8B310
P 650 1500
F 0 "J1" H 758 1685 50  0000 C CNN
F 1 "PWR" H 758 1592 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 650 1500 50  0001 C CNN
F 3 "~" H 650 1500 50  0001 C CNN
	1    650  1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0110
U 1 1 61D8D967
P 1250 1400
F 0 "#PWR0110" H 1250 1250 50  0001 C CNN
F 1 "+3.3V" H 1265 1575 50  0000 C CNN
F 2 "" H 1250 1400 50  0001 C CNN
F 3 "" H 1250 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 61D8F554
P 1250 1650
F 0 "#PWR0111" H 1250 1400 50  0001 C CNN
F 1 "GND" H 1255 1475 50  0000 C CNN
F 2 "" H 1250 1650 50  0001 C CNN
F 3 "" H 1250 1650 50  0001 C CNN
	1    1250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1600 1250 1650
Wire Wire Line
	1250 1500 1250 1400
Wire Wire Line
	850  1500 1250 1500
Wire Wire Line
	850  1600 1250 1600
NoConn ~ 8650 5350
NoConn ~ 8650 5250
NoConn ~ 8650 5150
NoConn ~ 8650 5050
NoConn ~ 8650 4950
$Comp
L Device:Antenna AE2
U 1 1 61DAD10F
P 10100 4350
F 0 "AE2" H 10180 4340 50  0000 L CNN
F 1 "LORA_ANT" H 10180 4247 50  0000 L CNN
F 2 "ats-remote:LORA_ANT_YIC71009EBGG" H 10100 4350 50  0001 C CNN
F 3 "~" H 10100 4350 50  0001 C CNN
	1    10100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 4750 10100 4550
$Comp
L Device:LED_Small D1
U 1 1 61DC26E5
P 800 4150
F 0 "D1" V 847 4081 50  0000 R CNN
F 1 "LED_STATUS" V 754 4081 50  0000 R CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 800 4150 50  0001 C CNN
F 3 "~" V 800 4150 50  0001 C CNN
	1    800  4150
	0    -1   -1   0   
$EndComp
Text GLabel 1400 3900 2    50   Input ~ 0
STATUS_LED
$Comp
L Device:R_Small R1
U 1 1 61DC688E
P 1150 3900
F 0 "R1" H 1209 3947 50  0000 L CNN
F 1 "3k3" H 1209 3854 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 1150 3900 50  0001 C CNN
F 3 "~" H 1150 3900 50  0001 C CNN
	1    1150 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 61DC7776
P 800 4500
F 0 "#PWR0112" H 800 4250 50  0001 C CNN
F 1 "GND" H 805 4325 50  0000 C CNN
F 2 "" H 800 4500 50  0001 C CNN
F 3 "" H 800 4500 50  0001 C CNN
	1    800  4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  4500 800  4250
$Comp
L Device:R_Small R3
U 1 1 61DD925F
P 3450 5100
F 0 "R3" H 3509 5147 50  0000 L CNN
F 1 "10k" H 3509 5054 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 3509 5007 50  0001 L CNN
F 3 "~" H 3450 5100 50  0001 C CNN
	1    3450 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 61DDB80D
P 3450 5600
F 0 "C1" H 3542 5647 50  0000 L CNN
F 1 "100n" H 3542 5554 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3450 5600 50  0001 C CNN
F 3 "~" H 3450 5600 50  0001 C CNN
	1    3450 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 61DDE375
P 3750 5350
F 0 "R4" V 3949 5350 50  0000 C CNN
F 1 "510" V 3856 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 3809 5257 50  0001 L CNN
F 3 "~" H 3750 5350 50  0001 C CNN
	1    3750 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 5500 3450 5350
Wire Wire Line
	3650 5350 3450 5350
Connection ~ 3450 5350
Wire Wire Line
	3450 5350 3450 5200
Wire Wire Line
	3850 5350 4450 5350
Wire Wire Line
	3450 5350 3250 5350
$Comp
L power:+3.3V #PWR0113
U 1 1 61DE345D
P 3450 4900
F 0 "#PWR0113" H 3450 4750 50  0001 C CNN
F 1 "+3.3V" H 3465 5075 50  0000 C CNN
F 2 "" H 3450 4900 50  0001 C CNN
F 3 "" H 3450 4900 50  0001 C CNN
	1    3450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5000 3450 4900
$Comp
L power:GND #PWR0114
U 1 1 61DE4E76
P 3450 5800
F 0 "#PWR0114" H 3450 5550 50  0001 C CNN
F 1 "GND" H 3455 5625 50  0000 C CNN
F 2 "" H 3450 5800 50  0001 C CNN
F 3 "" H 3450 5800 50  0001 C CNN
	1    3450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5700 3450 5800
$Comp
L Device:C_Small C5
U 1 1 61DEF298
P 4700 4600
F 0 "C5" V 4932 4600 50  0000 C CNN
F 1 "100n" V 4839 4600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4700 4600 50  0001 C CNN
F 3 "~" H 4700 4600 50  0001 C CNN
	1    4700 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 4850 4450 4850
$Comp
L power:GND #PWR0115
U 1 1 61E0B762
P 6000 4900
F 0 "#PWR0115" H 6000 4650 50  0001 C CNN
F 1 "GND" H 6005 4725 50  0000 C CNN
F 2 "" H 6000 4900 50  0001 C CNN
F 3 "" H 6000 4900 50  0001 C CNN
	1    6000 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 61E140A0
P 4700 4250
F 0 "C4" V 4932 4250 50  0000 C CNN
F 1 "10n" V 4839 4250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4700 4250 50  0001 C CNN
F 3 "~" H 4700 4250 50  0001 C CNN
	1    4700 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 4850 6000 4900
$Comp
L Device:LED_Small D2
U 1 1 61E477C6
P 1350 4600
F 0 "D2" H 1350 4839 50  0000 C CNN
F 1 "LED_PWR" H 1350 4746 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1350 4600 50  0001 C CNN
F 3 "~" V 1350 4600 50  0001 C CNN
	1    1350 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 61E477CD
P 1650 4350
F 0 "R2" H 1709 4397 50  0000 L CNN
F 1 "3k3" H 1709 4304 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 1650 4350 50  0001 C CNN
F 3 "~" H 1650 4350 50  0001 C CNN
	1    1650 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 61E477D3
P 1350 4950
F 0 "#PWR0116" H 1350 4700 50  0001 C CNN
F 1 "GND" H 1355 4775 50  0000 C CNN
F 2 "" H 1350 4950 50  0001 C CNN
F 3 "" H 1350 4950 50  0001 C CNN
	1    1350 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4950 1350 4700
Wire Wire Line
	1350 4500 1350 4350
Wire Wire Line
	1350 4350 1550 4350
$Comp
L power:+3.3V #PWR0117
U 1 1 61E4A660
P 2050 4250
F 0 "#PWR0117" H 2050 4100 50  0001 C CNN
F 1 "+3.3V" H 2065 4425 50  0000 C CNN
F 2 "" H 2050 4250 50  0001 C CNN
F 3 "" H 2050 4250 50  0001 C CNN
	1    2050 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4350 2050 4350
Wire Wire Line
	2050 4350 2050 4250
Wire Wire Line
	4800 4250 4800 4400
Wire Wire Line
	4600 4250 4600 4400
Wire Wire Line
	4400 4200 4400 4400
$Comp
L power:GND #PWR0118
U 1 1 61E76134
P 5050 4500
F 0 "#PWR0118" H 5050 4250 50  0001 C CNN
F 1 "GND" H 5055 4325 50  0000 C CNN
F 2 "" H 5050 4500 50  0001 C CNN
F 3 "" H 5050 4500 50  0001 C CNN
	1    5050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4400 5050 4400
Wire Wire Line
	5050 4400 5050 4500
Connection ~ 4800 4400
Wire Wire Line
	4800 4400 4800 4600
Wire Wire Line
	6000 4850 5450 4850
Wire Wire Line
	4600 4400 4400 4400
Connection ~ 4600 4400
Wire Wire Line
	4600 4400 4600 4600
Connection ~ 4400 4400
Wire Wire Line
	4400 4400 4400 4850
$Comp
L Device:C_Small C10
U 1 1 61E88FD6
P 7700 4450
F 0 "C10" V 7932 4450 50  0000 C CNN
F 1 "100n" V 7839 4450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7700 4450 50  0001 C CNN
F 3 "~" H 7700 4450 50  0001 C CNN
	1    7700 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 61E88FDC
P 7700 4100
F 0 "C9" V 7932 4100 50  0000 C CNN
F 1 "10n" V 7839 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7700 4100 50  0001 C CNN
F 3 "~" H 7700 4100 50  0001 C CNN
	1    7700 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 61E88FE4
P 7250 4450
F 0 "#PWR0119" H 7250 4200 50  0001 C CNN
F 1 "GND" H 7255 4275 50  0000 C CNN
F 2 "" H 7250 4450 50  0001 C CNN
F 3 "" H 7250 4450 50  0001 C CNN
	1    7250 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4100 7600 4250
Wire Wire Line
	7800 4100 7800 4250
Wire Wire Line
	8150 4100 8150 4250
Wire Wire Line
	8150 4250 7800 4250
Connection ~ 8150 4250
Wire Wire Line
	8150 4250 8150 4550
Connection ~ 7800 4250
Wire Wire Line
	7800 4250 7800 4450
Wire Wire Line
	7250 4250 7600 4250
Wire Wire Line
	7250 4250 7250 4450
Connection ~ 7600 4250
Wire Wire Line
	7600 4250 7600 4450
$Comp
L Device:C_Small C11
U 1 1 61E9F556
P 7750 1950
F 0 "C11" H 7842 1997 50  0000 L CNN
F 1 "10n" H 7842 1904 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7750 1950 50  0001 C CNN
F 3 "~" H 7750 1950 50  0001 C CNN
	1    7750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1450 7150 1450
$Comp
L Device:C_Small C8
U 1 1 61E9F550
P 7300 1950
F 0 "C8" H 7392 1997 50  0000 L CNN
F 1 "2u2" H 7392 1904 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7300 1950 50  0001 C CNN
F 3 "~" H 7300 1950 50  0001 C CNN
	1    7300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2050 7300 2050
Connection ~ 7300 2050
Wire Wire Line
	7300 2050 7750 2050
Wire Wire Line
	7150 1950 7150 1450
Wire Wire Line
	7000 1950 7150 1950
Connection ~ 7150 1450
Wire Wire Line
	7150 1450 7300 1450
Wire Wire Line
	7300 1850 7300 1450
Connection ~ 7300 1450
Wire Wire Line
	7750 1450 7750 1850
Wire Wire Line
	7000 2550 7750 2550
Connection ~ 7550 1450
Wire Wire Line
	7550 1450 7750 1450
Wire Wire Line
	7300 1450 7550 1450
$Comp
L Device:L_Small L1
U 1 1 61EE75EE
P 7750 2300
F 0 "L1" H 7799 2347 50  0000 L CNN
F 1 "33n" H 7799 2254 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7750 2300 50  0001 C CNN
F 3 "~" H 7750 2300 50  0001 C CNN
	1    7750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2200 7750 2050
Connection ~ 7750 2050
Wire Wire Line
	7750 2400 7750 2550
Wire Wire Line
	5800 1750 5100 1750
Wire Wire Line
	5100 1750 5100 1350
Wire Wire Line
	5100 1350 5050 1350
Wire Wire Line
	5800 1650 5150 1650
Wire Wire Line
	5150 900  5050 900 
Wire Wire Line
	5800 1450 5800 1050
$Comp
L Device:R_Small R5
U 1 1 61F04353
P 4700 1850
F 0 "R5" V 4501 1850 50  0000 C CNN
F 1 "3k3" V 4594 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 4700 1850 50  0001 C CNN
F 3 "~" H 4700 1850 50  0001 C CNN
	1    4700 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 61F085C8
P 4950 1350
F 0 "R7" V 4751 1350 50  0000 C CNN
F 1 "33" V 4844 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 4950 1350 50  0001 C CNN
F 3 "~" H 4950 1350 50  0001 C CNN
	1    4950 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 900  5150 1650
Wire Wire Line
	4850 1350 4350 1350
Wire Wire Line
	4850 900  4350 900 
$Comp
L power:GND #PWR0120
U 1 1 61F19544
P 3850 2050
F 0 "#PWR0120" H 3850 1800 50  0001 C CNN
F 1 "GND" H 3855 1875 50  0000 C CNN
F 2 "" H 3850 2050 50  0001 C CNN
F 3 "" H 3850 2050 50  0001 C CNN
	1    3850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1850 3850 2050
$Comp
L Device:C_Small C3
U 1 1 61F2C911
P 4350 1450
F 0 "C3" H 4442 1497 50  0000 L CNN
F 1 "100p" H 4442 1404 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4350 1450 50  0001 C CNN
F 3 "~" H 4350 1450 50  0001 C CNN
	1    4350 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61F2ED54
P 4350 1000
F 0 "C2" H 4442 1047 50  0000 L CNN
F 1 "100p" H 4442 954 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4350 1000 50  0001 C CNN
F 3 "~" H 4350 1000 50  0001 C CNN
	1    4350 1000
	1    0    0    -1  
$EndComp
Connection ~ 4350 900 
Wire Wire Line
	4350 900  4250 900 
Connection ~ 4350 1350
Wire Wire Line
	4350 1350 4250 1350
$Comp
L Device:R_Small R6
U 1 1 61F0A817
P 4950 900
F 0 "R6" V 4751 900 50  0000 C CNN
F 1 "33" V 4844 900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 4950 900 50  0001 C CNN
F 3 "~" H 4950 900 50  0001 C CNN
	1    4950 900 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 61F19544
P 3650 2050
F 0 "#PWR0120" H 3650 1800 50  0001 C CNN
F 1 "GND" H 3655 1875 50  0000 C CNN
F 2 "" H 3650 2050 50  0001 C CNN
F 3 "" H 3650 2050 50  0001 C CNN
	1    3650 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 61F1DC27
P 4050 1850
F 0 "D3" H 4050 2089 50  0000 C CNN
F 1 "LED_PPS" H 4050 1996 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4050 1850 50  0001 C CNN
F 3 "~" V 4050 1850 50  0001 C CNN
	1    4050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1850 3650 2050
$Comp
L Device:C_Small C3
U 1 1 61F2C911
P 4350 1450
F 0 "C3" H 4442 1497 50  0000 L CNN
F 1 "100p" H 4442 1404 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4350 1450 50  0001 C CNN
F 3 "~" H 4350 1450 50  0001 C CNN
	1    4350 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61F2ED54
P 4350 1000
F 0 "C2" H 4442 1047 50  0000 L CNN
F 1 "100p" H 4442 954 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4350 1000 50  0001 C CNN
F 3 "~" H 4350 1000 50  0001 C CNN
	1    4350 1000
	1    0    0    -1  
$EndComp
$Comp
L ats-remote:YIC71009EBGG U3
U 1 1 61C5EB6A
P 6450 2100
F 0 "U3" V 5600 2500 50  0000 L CNN
F 1 "YIC71009EBGG" V 7250 2000 50  0000 L CNN
F 2 "ats-remote:YIC71009EBGG-19STAMP" H 6450 2100 50  0001 C CNN
F 3 "" H 6450 2100 50  0001 C CNN
	1    6450 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 61F536B4
P 4350 1550
F 0 "#PWR0121" H 4350 1300 50  0001 C CNN
F 1 "GND" H 4355 1375 50  0000 C CNN
F 2 "" H 4350 1550 50  0001 C CNN
F 3 "" H 4350 1550 50  0001 C CNN
	1    4350 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 61F55B3B
P 4350 1100
F 0 "#PWR0122" H 4350 850 50  0001 C CNN
F 1 "GND" H 4355 925 50  0000 C CNN
F 2 "" H 4350 1100 50  0001 C CNN
F 3 "" H 4350 1100 50  0001 C CNN
	1    4350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1850 4800 1850
$Comp
L Device:C_Small C6
U 1 1 61F81A38
P 4750 2350
F 0 "C6" H 4842 2397 50  0000 L CNN
F 1 "2u2" H 4842 2304 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4750 2350 50  0001 C CNN
F 3 "~" H 4750 2350 50  0001 C CNN
	1    4750 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 61F81A3E
P 4950 2700
F 0 "#PWR0123" H 4950 2450 50  0001 C CNN
F 1 "GND" H 4955 2525 50  0000 C CNN
F 2 "" H 4950 2700 50  0001 C CNN
F 3 "" H 4950 2700 50  0001 C CNN
	1    4950 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 61F83B24
P 5250 2350
F 0 "C7" H 5342 2397 50  0000 L CNN
F 1 "10n" H 5342 2304 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5250 2350 50  0001 C CNN
F 3 "~" H 5250 2350 50  0001 C CNN
	1    5250 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2250 4750 2150
Wire Wire Line
	5250 2150 5250 2250
Wire Wire Line
	5250 2150 5250 2050
Wire Wire Line
	5250 2050 5800 2050
Connection ~ 5250 2150
Wire Wire Line
	4750 2150 4950 2150
Wire Wire Line
	4950 2100 4950 2150
Connection ~ 4950 2150
Wire Wire Line
	4950 2150 5250 2150
Wire Wire Line
	4950 2550 4950 2700
Wire Wire Line
	4750 2550 4750 2450
Wire Wire Line
	5250 2550 5250 2450
Connection ~ 4950 2550
Wire Wire Line
	4950 2550 4750 2550
Wire Wire Line
	4950 2550 5250 2550
$Comp
L Device:C_Small C12
U 1 1 61FBD209
P 9550 5350
F 0 "C12" H 9642 5397 50  0000 L CNN
F 1 "10n" H 9642 5304 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9550 5350 50  0001 C CNN
F 3 "~" H 9550 5350 50  0001 C CNN
	1    9550 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C13
U 1 1 61FBD20F
P 10000 5350
F 0 "C13" H 10092 5397 50  0000 L CNN
F 1 "2u2" H 10092 5304 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10000 5350 50  0001 C CNN
F 3 "~" H 10000 5350 50  0001 C CNN
	1    10000 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 5250 9550 5250
$Comp
L Device:L_Small L2
U 1 1 61FBD218
P 9550 5000
F 0 "L2" H 9599 5047 50  0000 L CNN
F 1 "33n" H 9599 4954 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9550 5000 50  0001 C CNN
F 3 "~" H 9550 5000 50  0001 C CNN
	1    9550 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 5100 9550 5250
Connection ~ 9550 5250
$Comp
L power:GND #PWR0124
U 1 1 61FC3361
P 9800 5700
F 0 "#PWR0124" H 9800 5450 50  0001 C CNN
F 1 "GND" H 9805 5525 50  0000 C CNN
F 2 "" H 9800 5700 50  0001 C CNN
F 3 "" H 9800 5700 50  0001 C CNN
	1    9800 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5450 9550 5600
Wire Wire Line
	9550 5600 9800 5600
Wire Wire Line
	9800 5600 9800 5700
Wire Wire Line
	10000 5450 10000 5600
Wire Wire Line
	10000 5600 9800 5600
Connection ~ 9800 5600
Wire Wire Line
	8650 4750 9550 4750
Wire Wire Line
	9550 4900 9550 4750
Connection ~ 9550 4750
Wire Wire Line
	9550 4750 10100 4750
Text GLabel 4450 5150 0    50   Input ~ 0
LORA_RESET
$Comp
L RF_Module:RFM95W-915S2 U1
U 1 1 61C41519
P 8150 5050
F 0 "U1" H 8500 5500 50  0000 C CNN
F 1 "RFM95W-915S2" H 8650 4500 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 4850 6700 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 4850 6700 50  0001 C CNN
	1    8150 5050
	1    0    0    -1  
$EndComp
Text GLabel 7650 5250 0    50   Input ~ 0
LORA_RESET
Wire Wire Line
	3650 1850 3950 1850
Wire Wire Line
	800  4050 800  3900
Wire Wire Line
	800  3900 1050 3900
Wire Wire Line
	1250 3900 1400 3900
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 622B1AA0
P 950 6250
F 0 "J3" H 1058 6535 50  0000 C CNN
F 1 "SPI" H 1058 6442 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 950 6250 50  0001 C CNN
F 3 "~" H 950 6250 50  0001 C CNN
	1    950  6250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 622B2102
P 950 6900
F 0 "J4" H 1058 7085 50  0000 C CNN
F 1 "UART" H 1058 6992 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 950 6900 50  0001 C CNN
F 3 "~" H 950 6900 50  0001 C CNN
	1    950  6900
	1    0    0    -1  
$EndComp
Text GLabel 1150 6450 2    50   Input ~ 0
LORA_SCK
Text GLabel 1150 6350 2    50   Input ~ 0
LORA_MOSI
Text GLabel 1150 6250 2    50   Input ~ 0
LORA_MISO
Text GLabel 1150 6150 2    50   Input ~ 0
LORA_NSS
Text GLabel 1150 7000 2    50   Input ~ 0
YIC_TXD
Text GLabel 1150 6900 2    50   Input ~ 0
YIC_RXD
$Comp
L Device:C_Small C14
U 1 1 61CC5279
P 8250 2550
F 0 "C14" V 8021 2550 50  0000 C CNN
F 1 "10n" V 8112 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8250 2550 50  0001 C CNN
F 3 "~" H 8250 2550 50  0001 C CNN
	1    8250 2550
	0    1    1    0   
$EndComp
$Comp
L Device:L_Small L3
U 1 1 61CC7ED4
P 8000 2800
F 0 "L3" H 8049 2847 50  0000 L CNN
F 1 "33n" H 8049 2754 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8000 2800 50  0001 C CNN
F 3 "~" H 8000 2800 50  0001 C CNN
	1    8000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2900 8000 3050
$Comp
L Device:L_Small L4
U 1 1 61CCBBC5
P 8500 2800
F 0 "L4" H 8549 2847 50  0000 L CNN
F 1 "33n" H 8549 2754 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8500 2800 50  0001 C CNN
F 3 "~" H 8500 2800 50  0001 C CNN
	1    8500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2900 8500 3050
Wire Wire Line
	7750 2550 8000 2550
Connection ~ 7750 2550
Wire Wire Line
	8000 2700 8000 2550
Connection ~ 8000 2550
Wire Wire Line
	8000 2550 8150 2550
$Comp
L power:GND #PWR0125
U 1 1 61CE9263
P 8250 3100
F 0 "#PWR0125" H 8250 2850 50  0001 C CNN
F 1 "GND" H 8255 2925 50  0000 C CNN
F 2 "" H 8250 3100 50  0001 C CNN
F 3 "" H 8250 3100 50  0001 C CNN
	1    8250 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3050 8250 3050
Wire Wire Line
	8250 3050 8250 3100
Wire Wire Line
	8250 3050 8500 3050
Connection ~ 8250 3050
$Comp
L ats-remote:ACAG1204-915-T AE1
U 1 1 61D69634
P 8950 1400
F 0 "AE1" H 8500 1750 50  0000 L CNN
F 1 "GPS_ANT" V 9500 1150 50  0000 L CNN
F 2 "ats-remote:GPS_ANT_SR4G008" H 8950 2450 50  0001 C CNN
F 3 "" H 8950 2450 50  0001 C CNN
	1    8950 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 61D7E716
P 9400 1900
F 0 "#PWR0126" H 9400 1650 50  0001 C CNN
F 1 "GND" H 9405 1725 50  0000 C CNN
F 2 "" H 9400 1900 50  0001 C CNN
F 3 "" H 9400 1900 50  0001 C CNN
	1    9400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1750 9200 1900
Wire Wire Line
	9200 1900 9300 1900
Wire Wire Line
	9300 1750 9300 1900
Connection ~ 9300 1900
Wire Wire Line
	9300 1900 9400 1900
Wire Wire Line
	9400 1750 9400 1900
Connection ~ 9400 1900
Wire Wire Line
	8350 2550 8500 2550
Wire Wire Line
	8500 2550 8500 1750
Wire Wire Line
	8500 2550 8500 2700
Connection ~ 8500 2550
Wire Wire Line
	4150 1850 4600 1850
$EndSCHEMATC
