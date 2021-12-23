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
L RF_Module:RFM95W-915S2 U1
U 1 1 61C41519
P 5400 1850
F 0 "U1" H 5750 2300 50  0000 C CNN
F 1 "RFM95W-915S2" H 5900 1300 50  0000 C CNN
F 2 "RF_Module:HOPERF_RFM9XW_SMD" H 2100 3500 50  0001 C CNN
F 3 "https://www.hoperf.com/data/upload/portal/20181127/5bfcbea20e9ef.pdf" H 2100 3500 50  0001 C CNN
	1    5400 1850
	1    0    0    -1  
$EndComp
$Comp
L ats-remote:PIC18F0xQ40 U2
U 1 1 61C47B82
P 5400 3900
F 0 "U2" V 4550 4250 50  0000 L CNN
F 1 "PIC18F06Q40" V 6250 3800 50  0000 L CNN
F 2 "ats-remote:PIC18F06Q40-SOIC14" H 6250 4250 50  0001 C CNN
F 3 "" H 6250 4250 50  0001 C CNN
	1    5400 3900
	0    1    1    0   
$EndComp
$Comp
L ats-remote:YIC71009EBGG U3
U 1 1 61C5EB6A
P 5450 5950
F 0 "U3" V 4600 6350 50  0000 L CNN
F 1 "YIC71009EBGG" V 6250 5850 50  0000 L CNN
F 2 "ats-remote:YIC71009EBGG-19STAMP" H 5450 5950 50  0001 C CNN
F 3 "" H 5450 5950 50  0001 C CNN
	1    5450 5950
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 61C76E43
P 3850 1250
F 0 "J1" H 3930 1242 50  0000 L CNN
F 1 "Conn_01x08" H 3930 1151 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x08_P1.27mm_Vertical" H 3850 1250 50  0001 C CNN
F 3 "~" H 3850 1250 50  0001 C CNN
	1    3850 1250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J3
U 1 1 61C7C8BE
P 3850 3450
F 0 "J3" H 3930 3492 50  0000 L CNN
F 1 "Conn_01x07" H 3930 3401 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x07_P1.27mm_Vertical" H 3850 3450 50  0001 C CNN
F 3 "~" H 3850 3450 50  0001 C CNN
	1    3850 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x07 J4
U 1 1 61C7D733
P 3850 4300
F 0 "J4" H 3930 4342 50  0000 L CNN
F 1 "Conn_01x07" H 3930 4251 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x07_P1.27mm_Vertical" H 3850 4300 50  0001 C CNN
F 3 "~" H 3850 4300 50  0001 C CNN
	1    3850 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J5
U 1 1 61C7F387
P 3850 5650
F 0 "J5" H 3930 5692 50  0000 L CNN
F 1 "Conn_01x09" H 3930 5601 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x09_P1.27mm_Vertical" H 3850 5650 50  0001 C CNN
F 3 "~" H 3850 5650 50  0001 C CNN
	1    3850 5650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J6
U 1 1 61C80E8C
P 3850 6650
F 0 "J6" H 3930 6692 50  0000 L CNN
F 1 "Conn_01x09" H 3930 6601 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x09_P1.27mm_Vertical" H 3850 6650 50  0001 C CNN
F 3 "~" H 3850 6650 50  0001 C CNN
	1    3850 6650
	1    0    0    -1  
$EndComp
Text GLabel 4900 1550 0    50   Input ~ 0
LORA_SCK
Text GLabel 4900 1650 0    50   Input ~ 0
LORA_MOSI
Text GLabel 4900 1750 0    50   Input ~ 0
LORA_MISO
Text GLabel 4900 1850 0    50   Input ~ 0
LORA_NSS
Text GLabel 4900 2050 0    50   Input ~ 0
LORA_RESET
Text GLabel 5300 2450 3    50   Input ~ 0
LORA_GND_1
Text GLabel 5400 2450 3    50   Input ~ 0
LORA_GND_2
Text GLabel 5500 2450 3    50   Input ~ 0
LORA_GND_3
Text GLabel 5400 1350 1    50   Input ~ 0
LORA_3.3V
Text GLabel 5900 1550 2    50   Input ~ 0
LORA_ANT
Text GLabel 5900 1750 2    50   Input ~ 0
LORA_DIO5
Text GLabel 5900 1850 2    50   Input ~ 0
LORA_DIO4
Text GLabel 5900 1950 2    50   Input ~ 0
LORA_DIO3
Text GLabel 5900 2050 2    50   Input ~ 0
LORA_DIO2
Text GLabel 5900 2150 2    50   Input ~ 0
LORA_DIO1
Text GLabel 5900 2250 2    50   Input ~ 0
LORA_DIO0
Text GLabel 3650 950  0    50   Input ~ 0
LORA_GND_1
Text GLabel 3650 1050 0    50   Input ~ 0
LORA_MISO
Text GLabel 3650 1150 0    50   Input ~ 0
LORA_MOSI
Text GLabel 3650 1250 0    50   Input ~ 0
LORA_SCK
Text GLabel 3650 1350 0    50   Input ~ 0
LORA_NSS
Text GLabel 3650 1450 0    50   Input ~ 0
LORA_RESET
Text GLabel 3650 1550 0    50   Input ~ 0
LORA_DIO5
Text GLabel 3650 1650 0    50   Input ~ 0
LORA_GND_2
Text GLabel 3650 1800 0    50   Input ~ 0
LORA_ANT
Text GLabel 3650 1900 0    50   Input ~ 0
LORA_GND_3
Text GLabel 3650 2000 0    50   Input ~ 0
LORA_DIO3
Text GLabel 3650 2100 0    50   Input ~ 0
LORA_DIO4
Text GLabel 3650 2200 0    50   Input ~ 0
LORA_3.3V
Text GLabel 3650 2300 0    50   Input ~ 0
LORA_DIO0
Text GLabel 3650 2400 0    50   Input ~ 0
LORA_DIO1
Text GLabel 3650 2500 0    50   Input ~ 0
LORA_DIO2
Text GLabel 4900 3200 0    50   Input ~ 0
PIC_VDD
Text GLabel 4900 3500 0    50   Input ~ 0
PIC_RA5
Text GLabel 4900 3600 0    50   Input ~ 0
PIC_RA4
Text GLabel 4900 3700 0    50   Input ~ 0
PIC_RA3
Text GLabel 4900 4300 0    50   Input ~ 0
PIC_RC5
Text GLabel 4900 4400 0    50   Input ~ 0
PIC_RC4
Text GLabel 4900 4500 0    50   Input ~ 0
PIC_RC3
Text GLabel 5900 3200 2    50   Input ~ 0
PIC_VSS
Text GLabel 5900 3400 2    50   Input ~ 0
PIC_RA0
Text GLabel 5900 3500 2    50   Input ~ 0
PIC_RA1
Text GLabel 5900 3600 2    50   Input ~ 0
PIC_RA2
Text GLabel 5900 4300 2    50   Input ~ 0
PIC_RC0
Text GLabel 5900 4400 2    50   Input ~ 0
PIC_RC1
Text GLabel 5900 4500 2    50   Input ~ 0
PIC_RC2
Text GLabel 4800 5300 0    50   Input ~ 0
YIC_GND_1
Text GLabel 4800 5500 0    50   Input ~ 0
YIC_TXD
Text GLabel 4800 5600 0    50   Input ~ 0
YIC_RXD
Text GLabel 4800 5700 0    50   Input ~ 0
YIC_PPS
Text GLabel 4800 5900 0    50   Input ~ 0
YIC_VCC_3.3V
Text GLabel 6000 5300 2    50   Input ~ 0
YIC_GND_5
Text GLabel 6000 6500 2    50   Input ~ 0
YIC_GND_2
Text GLabel 6000 6300 2    50   Input ~ 0
YIC_GND_3
Text GLabel 6000 6400 2    50   Input ~ 0
YIC_RF_IN
Text GLabel 6000 5900 2    50   Input ~ 0
YIC_VCC_RF
Text GLabel 6000 5800 2    50   Input ~ 0
YIC_GND_4
Text GLabel 3650 5250 0    50   Input ~ 0
YIC_GND_1
Text GLabel 3650 5350 0    50   Input ~ 0
YIC_TXD
Text GLabel 3650 5450 0    50   Input ~ 0
YIC_RXD
Text GLabel 3650 5550 0    50   Input ~ 0
YIC_PPS
Text GLabel 3650 5950 0    50   Input ~ 0
YIC_VCC_3.3V
Text GLabel 3650 6250 0    50   Input ~ 0
YIC_GND_2
Text GLabel 3650 6350 0    50   Input ~ 0
YIC_RF_IN
Text GLabel 3650 6450 0    50   Input ~ 0
YIC_GND_3
Text GLabel 3650 6650 0    50   Input ~ 0
YIC_VCC_RF
Text GLabel 3650 6750 0    50   Input ~ 0
YIC_GND_4
Text GLabel 3650 7050 0    50   Input ~ 0
YIC_GND_5
Text GLabel 3650 3150 0    50   Input ~ 0
PIC_VDD
Text GLabel 3650 3250 0    50   Input ~ 0
PIC_RA5
Text GLabel 3650 3350 0    50   Input ~ 0
PIC_RA4
Text GLabel 3650 3450 0    50   Input ~ 0
PIC_RA3
Text GLabel 3650 3550 0    50   Input ~ 0
PIC_RC5
Text GLabel 3650 3650 0    50   Input ~ 0
PIC_RC4
Text GLabel 3650 3750 0    50   Input ~ 0
PIC_RC3
Text GLabel 3650 4000 0    50   Input ~ 0
PIC_RC2
Text GLabel 3650 4100 0    50   Input ~ 0
PIC_RC1
Text GLabel 3650 4200 0    50   Input ~ 0
PIC_RC0
Text GLabel 3650 4300 0    50   Input ~ 0
PIC_RA2
Text GLabel 3650 4400 0    50   Input ~ 0
PIC_RA1
Text GLabel 3650 4500 0    50   Input ~ 0
PIC_RA0
Text GLabel 3650 4600 0    50   Input ~ 0
PIC_VSS
NoConn ~ 3650 5650
NoConn ~ 3650 5750
NoConn ~ 3650 5850
NoConn ~ 3650 6050
NoConn ~ 3650 6550
NoConn ~ 3650 6850
NoConn ~ 3650 6950
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 61C7AD92
P 3850 2100
F 0 "J2" H 3930 2092 50  0000 L CNN
F 1 "Conn_01x08" H 3930 2001 50  0000 L CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_1x08_P1.27mm_Vertical" H 3850 2100 50  0001 C CNN
F 3 "~" H 3850 2100 50  0001 C CNN
	1    3850 2100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
