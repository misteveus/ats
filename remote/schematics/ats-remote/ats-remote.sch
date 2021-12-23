EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ATS Remote Schematic"
Date "2021-12-23"
Rev "0.1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:RFM95W-915S2 U1
U 1 1 61C41519
P 6350 1700
F 0 "U1" H 6700 2150 50  0000 C CNN
F 1 "RFM95W-915S2" H 6850 1150 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 3050 3350 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 3050 3350 50  0001 C CNN
	1    6350 1700
	1    0    0    -1  
$EndComp
$Comp
L ats-remote:PIC18F0xQ40 U2
U 1 1 61C47B82
P 6350 3750
F 0 "U2" V 5500 4100 50  0000 L CNN
F 1 "PIC18F06Q40" V 7200 3650 50  0000 L CNN
F 2 "ats-remote:PIC18F06Q40-SOIC14" H 7200 4100 50  0001 C CNN
F 3 "" H 7200 4100 50  0001 C CNN
	1    6350 3750
	0    1    1    0   
$EndComp
$Comp
L ats-remote:YIC71009EBGG U3
U 1 1 61C5EB6A
P 6400 5800
F 0 "U3" V 5550 6200 50  0000 L CNN
F 1 "YIC71009EBGG" V 7200 5700 50  0000 L CNN
F 2 "ats-remote:YIC71009EBGG-19STAMP" H 6400 5800 50  0001 C CNN
F 3 "" H 6400 5800 50  0001 C CNN
	1    6400 5800
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 61C76E43
P 4800 1100
F 0 "J1" H 4880 1092 50  0000 L CNN
F 1 "Conn_01x08" H 4880 1001 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x08_P1.27mm_Vertical" H 4800 1100 50  0001 C CNN
F 3 "~" H 4800 1100 50  0001 C CNN
	1    4800 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J3
U 1 1 61C7C8BE
P 4800 3300
F 0 "J3" H 4880 3342 50  0000 L CNN
F 1 "Conn_01x07" H 4880 3251 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x07_P1.27mm_Vertical" H 4800 3300 50  0001 C CNN
F 3 "~" H 4800 3300 50  0001 C CNN
	1    4800 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J4
U 1 1 61C7D733
P 4800 4150
F 0 "J4" H 4880 4192 50  0000 L CNN
F 1 "Conn_01x07" H 4880 4101 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x07_P1.27mm_Vertical" H 4800 4150 50  0001 C CNN
F 3 "~" H 4800 4150 50  0001 C CNN
	1    4800 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J5
U 1 1 61C7F387
P 4800 5500
F 0 "J5" H 4880 5542 50  0000 L CNN
F 1 "Conn_01x09" H 4880 5451 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x09_P1.27mm_Vertical" H 4800 5500 50  0001 C CNN
F 3 "~" H 4800 5500 50  0001 C CNN
	1    4800 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J6
U 1 1 61C80E8C
P 4800 6500
F 0 "J6" H 4880 6542 50  0000 L CNN
F 1 "Conn_01x09" H 4880 6451 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x09_P1.27mm_Vertical" H 4800 6500 50  0001 C CNN
F 3 "~" H 4800 6500 50  0001 C CNN
	1    4800 6500
	1    0    0    -1  
$EndComp
Text GLabel 5850 1400 0    50   Input ~ 0
LORA_SCK
Text GLabel 5850 1500 0    50   Input ~ 0
LORA_MOSI
Text GLabel 5850 1600 0    50   Input ~ 0
LORA_MISO
Text GLabel 5850 1700 0    50   Input ~ 0
LORA_NSS
Text GLabel 5850 1900 0    50   Input ~ 0
LORA_RESET
Text GLabel 6250 2300 3    50   Input ~ 0
LORA_GND_1
Text GLabel 6350 2300 3    50   Input ~ 0
LORA_GND_2
Text GLabel 6450 2300 3    50   Input ~ 0
LORA_GND_3
Text GLabel 6350 1200 1    50   Input ~ 0
LORA_3.3V
Text GLabel 6850 1400 2    50   Input ~ 0
LORA_ANT
Text GLabel 6850 1600 2    50   Input ~ 0
LORA_DIO5
Text GLabel 6850 1700 2    50   Input ~ 0
LORA_DIO4
Text GLabel 6850 1800 2    50   Input ~ 0
LORA_DIO3
Text GLabel 6850 1900 2    50   Input ~ 0
LORA_DIO2
Text GLabel 6850 2000 2    50   Input ~ 0
LORA_DIO1
Text GLabel 6850 2100 2    50   Input ~ 0
LORA_DIO0
Text GLabel 4600 800  0    50   Input ~ 0
LORA_GND_1
Text GLabel 4600 900  0    50   Input ~ 0
LORA_MISO
Text GLabel 4600 1000 0    50   Input ~ 0
LORA_MOSI
Text GLabel 4600 1100 0    50   Input ~ 0
LORA_SCK
Text GLabel 4600 1200 0    50   Input ~ 0
LORA_NSS
Text GLabel 4600 1300 0    50   Input ~ 0
LORA_RESET
Text GLabel 4600 1400 0    50   Input ~ 0
LORA_DIO5
Text GLabel 4600 1500 0    50   Input ~ 0
LORA_GND_2
Text GLabel 4600 1650 0    50   Input ~ 0
LORA_ANT
Text GLabel 4600 1750 0    50   Input ~ 0
LORA_GND_3
Text GLabel 4600 1850 0    50   Input ~ 0
LORA_DIO3
Text GLabel 4600 1950 0    50   Input ~ 0
LORA_DIO4
Text GLabel 4600 2050 0    50   Input ~ 0
LORA_3.3V
Text GLabel 4600 2150 0    50   Input ~ 0
LORA_DIO0
Text GLabel 4600 2250 0    50   Input ~ 0
LORA_DIO1
Text GLabel 4600 2350 0    50   Input ~ 0
LORA_DIO2
Text GLabel 5850 3050 0    50   Input ~ 0
PIC_VDD
Text GLabel 5850 3350 0    50   Input ~ 0
PIC_RA5
Text GLabel 5850 3450 0    50   Input ~ 0
PIC_RA4
Text GLabel 5850 3550 0    50   Input ~ 0
PIC_RA3
Text GLabel 5850 4150 0    50   Input ~ 0
PIC_RC5
Text GLabel 5850 4250 0    50   Input ~ 0
PIC_RC4
Text GLabel 5850 4350 0    50   Input ~ 0
PIC_RC3
Text GLabel 6850 3050 2    50   Input ~ 0
PIC_VSS
Text GLabel 6850 3250 2    50   Input ~ 0
PIC_RA0
Text GLabel 6850 3350 2    50   Input ~ 0
PIC_RA1
Text GLabel 6850 3450 2    50   Input ~ 0
PIC_RA2
Text GLabel 6850 4150 2    50   Input ~ 0
PIC_RC0
Text GLabel 6850 4250 2    50   Input ~ 0
PIC_RC1
Text GLabel 6850 4350 2    50   Input ~ 0
PIC_RC2
Text GLabel 5750 5150 0    50   Input ~ 0
YIC_GND_1
Text GLabel 5750 5350 0    50   Input ~ 0
YIC_TXD
Text GLabel 5750 5450 0    50   Input ~ 0
YIC_RXD
Text GLabel 5750 5550 0    50   Input ~ 0
YIC_PPS
Text GLabel 5750 5750 0    50   Input ~ 0
YIC_VCC_3.3V
Text GLabel 6950 5150 2    50   Input ~ 0
YIC_GND_5
Text GLabel 6950 6350 2    50   Input ~ 0
YIC_GND_2
Text GLabel 6950 6150 2    50   Input ~ 0
YIC_GND_3
Text GLabel 6950 6250 2    50   Input ~ 0
YIC_RF_IN
Text GLabel 6950 5750 2    50   Input ~ 0
YIC_VCC_RF
Text GLabel 6950 5650 2    50   Input ~ 0
YIC_GND_4
Text GLabel 4600 5100 0    50   Input ~ 0
YIC_GND_1
Text GLabel 4600 5200 0    50   Input ~ 0
YIC_TXD
Text GLabel 4600 5300 0    50   Input ~ 0
YIC_RXD
Text GLabel 4600 5400 0    50   Input ~ 0
YIC_PPS
Text GLabel 4600 5800 0    50   Input ~ 0
YIC_VCC_3.3V
Text GLabel 4600 6100 0    50   Input ~ 0
YIC_GND_2
Text GLabel 4600 6200 0    50   Input ~ 0
YIC_RF_IN
Text GLabel 4600 6300 0    50   Input ~ 0
YIC_GND_3
Text GLabel 4600 6500 0    50   Input ~ 0
YIC_VCC_RF
Text GLabel 4600 6600 0    50   Input ~ 0
YIC_GND_4
Text GLabel 4600 6900 0    50   Input ~ 0
YIC_GND_5
Text GLabel 4600 3000 0    50   Input ~ 0
PIC_VDD
Text GLabel 4600 3100 0    50   Input ~ 0
PIC_RA5
Text GLabel 4600 3200 0    50   Input ~ 0
PIC_RA4
Text GLabel 4600 3300 0    50   Input ~ 0
PIC_RA3
Text GLabel 4600 3400 0    50   Input ~ 0
PIC_RC5
Text GLabel 4600 3500 0    50   Input ~ 0
PIC_RC4
Text GLabel 4600 3600 0    50   Input ~ 0
PIC_RC3
Text GLabel 4600 3850 0    50   Input ~ 0
PIC_RC2
Text GLabel 4600 3950 0    50   Input ~ 0
PIC_RC1
Text GLabel 4600 4050 0    50   Input ~ 0
PIC_RC0
Text GLabel 4600 4150 0    50   Input ~ 0
PIC_RA2
Text GLabel 4600 4250 0    50   Input ~ 0
PIC_RA1
Text GLabel 4600 4350 0    50   Input ~ 0
PIC_RA0
Text GLabel 4600 4450 0    50   Input ~ 0
PIC_VSS
NoConn ~ 4600 5500
NoConn ~ 4600 5600
NoConn ~ 4600 5700
NoConn ~ 4600 5900
NoConn ~ 4600 6400
NoConn ~ 4600 6700
NoConn ~ 4600 6800
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 61C7AD92
P 4800 1950
F 0 "J2" H 4880 1942 50  0000 L CNN
F 1 "Conn_01x08" H 4880 1851 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x08_P1.27mm_Vertical" H 4800 1950 50  0001 C CNN
F 3 "~" H 4800 1950 50  0001 C CNN
	1    4800 1950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
