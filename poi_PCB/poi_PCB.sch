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
L Regulator_Switching:MT3608 U1
U 1 1 618F097A
P 2200 1300
F 0 "U1" H 2200 1667 50  0000 C CNN
F 1 "MT3608" H 2200 1576 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2250 1050 50  0001 L CIN
F 3 "https://www.olimex.com/Products/Breadboarding/BB-PWR-3608/resources/MT3608.pdf" H 1950 1750 50  0001 C CNN
	1    2200 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 618F17AB
P 2650 7100
F 0 "J1" H 2568 6775 50  0000 C CNN
F 1 "BATT_CONN" H 2568 6866 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2650 7100 50  0001 C CNN
F 3 "~" H 2650 7100 50  0001 C CNN
	1    2650 7100
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPDT SW1
U 1 1 618F5297
P 1100 1300
F 0 "SW1" H 1100 1585 50  0000 C CNN
F 1 "PWR_ON" H 1100 1494 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPDT_PCM12" H 1100 1300 50  0001 C CNN
F 3 "~" H 1100 1300 50  0001 C CNN
	1    1100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1700 2200 1600
Connection ~ 1800 1200
Wire Wire Line
	1800 1200 1900 1200
$Comp
L Device:L L1
U 1 1 618FE3AD
P 2200 800
F 0 "L1" V 2390 800 50  0000 C CNN
F 1 "22uH" V 2299 800 50  0000 C CNN
F 2 "Inductor_SMD:L_7.3x7.3_H3.5" H 2200 800 50  0001 C CNN
F 3 "~" H 2200 800 50  0001 C CNN
	1    2200 800 
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 61900391
P 2800 800
F 0 "D1" H 2800 583 50  0000 C CNN
F 1 "D_Schottky" H 2800 674 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 2800 800 50  0001 C CNN
F 3 "~" H 2800 800 50  0001 C CNN
F 4 "C22452" H 2800 800 50  0001 C CNN "LCSC"
	1    2800 800 
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R5
U 1 1 619008A7
P 3050 1150
F 0 "R5" H 3118 1196 50  0000 L CNN
F 1 "73K" H 3118 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3090 1140 50  0001 C CNN
F 3 "~" H 3050 1150 50  0001 C CNN
	1    3050 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 61900FD8
P 3050 1600
F 0 "R6" H 3118 1646 50  0000 L CNN
F 1 "10K" H 3118 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3090 1590 50  0001 C CNN
F 3 "~" H 3050 1600 50  0001 C CNN
	1    3050 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 619016F7
P 3500 1150
F 0 "C4" H 3615 1196 50  0000 L CNN
F 1 "22uF" H 3615 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 1000 50  0001 C CNN
F 3 "~" H 3500 1150 50  0001 C CNN
F 4 "C59461" H 3500 1150 50  0001 C CNN "LCSC"
	1    3500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1200 1400 1200
$Comp
L Device:C C1
U 1 1 6190280F
P 1400 1550
F 0 "C1" H 1515 1596 50  0000 L CNN
F 1 "22uF" H 1515 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1438 1400 50  0001 C CNN
F 3 "~" H 1400 1550 50  0001 C CNN
F 4 "C59461" H 1400 1550 50  0001 C CNN "LCSC"
	1    1400 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61902BCE
P 2200 1700
F 0 "#PWR0101" H 2200 1450 50  0001 C CNN
F 1 "GND" H 2205 1527 50  0000 C CNN
F 2 "" H 2200 1700 50  0001 C CNN
F 3 "" H 2200 1700 50  0001 C CNN
	1    2200 1700
	1    0    0    -1  
$EndComp
Connection ~ 2200 1700
Wire Wire Line
	1800 1200 1800 800 
Wire Wire Line
	1800 800  2050 800 
Wire Wire Line
	2350 800  2550 800 
Wire Wire Line
	2500 1200 2550 1200
Wire Wire Line
	2550 1200 2550 800 
Connection ~ 2550 800 
Wire Wire Line
	2550 800  2650 800 
Wire Wire Line
	2950 800  3050 800 
Wire Wire Line
	3050 800  3050 1000
Wire Wire Line
	3050 1300 3050 1400
Wire Wire Line
	2500 1400 3050 1400
Connection ~ 3050 1400
Wire Wire Line
	3050 1400 3050 1450
$Comp
L power:GND #PWR0102
U 1 1 619064A1
P 3050 1800
F 0 "#PWR0102" H 3050 1550 50  0001 C CNN
F 1 "GND" H 3055 1627 50  0000 C CNN
F 2 "" H 3050 1800 50  0001 C CNN
F 3 "" H 3050 1800 50  0001 C CNN
	1    3050 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1800 3050 1750
Wire Wire Line
	3500 1000 3500 800 
Wire Wire Line
	3500 800  3050 800 
Connection ~ 3050 800 
Wire Wire Line
	3500 1300 3500 1750
Wire Wire Line
	3500 1750 3050 1750
Connection ~ 3050 1750
$Comp
L power:+5V #PWR0103
U 1 1 61907A59
P 3500 750
F 0 "#PWR0103" H 3500 600 50  0001 C CNN
F 1 "+5V" H 3515 923 50  0000 C CNN
F 2 "" H 3500 750 50  0001 C CNN
F 3 "" H 3500 750 50  0001 C CNN
	1    3500 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 800  3500 750 
Connection ~ 3500 800 
$Comp
L power:+BATT #PWR0104
U 1 1 619084C2
P 700 1250
F 0 "#PWR0104" H 700 1100 50  0001 C CNN
F 1 "+BATT" H 715 1423 50  0000 C CNN
F 2 "" H 700 1250 50  0001 C CNN
F 3 "" H 700 1250 50  0001 C CNN
	1    700  1250
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR0105
U 1 1 61908E20
P 1400 1700
F 0 "#PWR0105" H 1400 1550 50  0001 C CNN
F 1 "-BATT" H 1415 1873 50  0000 C CNN
F 2 "" H 1400 1700 50  0001 C CNN
F 3 "" H 1400 1700 50  0001 C CNN
	1    1400 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	700  1300 700  1250
Wire Wire Line
	700  1300 900  1300
$Comp
L LED:WS2812B D2
U 1 1 619145CF
P 7400 1150
F 0 "D2" H 7744 1078 50  0000 L CNN
F 1 "WS2812B" H 7744 985 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7450 850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7500 775 50  0001 L TNN
F 4 "C139127" H 7400 1150 50  0001 C CNN "LCSC"
	1    7400 1150
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D4
U 1 1 6191755E
P 8300 1150
F 0 "D4" H 8644 1078 50  0000 L CNN
F 1 "WS2812B" H 8644 985 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 8350 850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 8400 775 50  0001 L TNN
F 4 "C139127" H 8300 1150 50  0001 C CNN "LCSC"
	1    8300 1150
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D6
U 1 1 6191968E
P 9250 1150
F 0 "D6" H 9594 1078 50  0000 L CNN
F 1 "WS2812B" H 9594 985 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 9300 850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 9350 775 50  0001 L TNN
F 4 "C139127" H 9250 1150 50  0001 C CNN "LCSC"
	1    9250 1150
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D8
U 1 1 61919694
P 10150 1150
F 0 "D8" H 10494 1078 50  0000 L CNN
F 1 "WS2812B" H 10494 985 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 10200 850 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 10250 775 50  0001 L TNN
F 4 "C139127" H 10150 1150 50  0001 C CNN "LCSC"
	1    10150 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6192518C
P 8750 1600
F 0 "#PWR0106" H 8750 1350 50  0001 C CNN
F 1 "GND" H 8755 1427 50  0000 C CNN
F 2 "" H 8750 1600 50  0001 C CNN
F 3 "" H 8750 1600 50  0001 C CNN
	1    8750 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 619255E4
P 8750 750
F 0 "#PWR0107" H 8750 600 50  0001 C CNN
F 1 "+5V" H 8765 923 50  0000 C CNN
F 2 "" H 8750 750 50  0001 C CNN
F 3 "" H 8750 750 50  0001 C CNN
	1    8750 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 850  7400 800 
Wire Wire Line
	7400 800  8300 800 
Wire Wire Line
	8750 800  8750 750 
Wire Wire Line
	8300 850  8300 800 
Connection ~ 8300 800 
Wire Wire Line
	8300 800  8750 800 
Wire Wire Line
	10150 850  10150 800 
Wire Wire Line
	10150 800  9250 800 
Connection ~ 8750 800 
Wire Wire Line
	9250 850  9250 800 
Connection ~ 9250 800 
Wire Wire Line
	9250 800  8750 800 
Wire Wire Line
	7400 1450 7400 1500
Wire Wire Line
	7400 1500 8300 1500
Wire Wire Line
	8750 1500 8750 1600
Wire Wire Line
	8300 1450 8300 1500
Connection ~ 8300 1500
Wire Wire Line
	8300 1500 8750 1500
Wire Wire Line
	8750 1500 9250 1500
Wire Wire Line
	9250 1500 9250 1450
Connection ~ 8750 1500
Wire Wire Line
	9250 1500 10150 1500
Wire Wire Line
	10150 1500 10150 1450
Connection ~ 9250 1500
Wire Wire Line
	9850 1150 9550 1150
Wire Wire Line
	8950 1150 8600 1150
Wire Wire Line
	8000 1150 7700 1150
$Comp
L LED:WS2812B D3
U 1 1 619310AA
P 7400 2550
F 0 "D3" H 7744 2478 50  0000 L CNN
F 1 "WS2812B" H 7744 2385 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 7450 2250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 7500 2175 50  0001 L TNN
F 4 "C139127" H 7400 2550 50  0001 C CNN "LCSC"
	1    7400 2550
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D5
U 1 1 619310B0
P 8300 2550
F 0 "D5" H 8644 2478 50  0000 L CNN
F 1 "WS2812B" H 8644 2385 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 8350 2250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 8400 2175 50  0001 L TNN
F 4 "C139127" H 8300 2550 50  0001 C CNN "LCSC"
	1    8300 2550
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D7
U 1 1 619310B6
P 9250 2550
F 0 "D7" H 9594 2478 50  0000 L CNN
F 1 "WS2812B" H 9594 2385 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 9300 2250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 9350 2175 50  0001 L TNN
F 4 "C139127" H 9250 2550 50  0001 C CNN "LCSC"
	1    9250 2550
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D9
U 1 1 619310BC
P 10150 2550
F 0 "D9" H 10494 2478 50  0000 L CNN
F 1 "WS2812B" H 10494 2385 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 10200 2250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 10250 2175 50  0001 L TNN
F 4 "C139127" H 10150 2550 50  0001 C CNN "LCSC"
	1    10150 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 619310C2
P 8750 3000
F 0 "#PWR0108" H 8750 2750 50  0001 C CNN
F 1 "GND" H 8755 2827 50  0000 C CNN
F 2 "" H 8750 3000 50  0001 C CNN
F 3 "" H 8750 3000 50  0001 C CNN
	1    8750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 619310C8
P 8750 2150
F 0 "#PWR0109" H 8750 2000 50  0001 C CNN
F 1 "+5V" H 8765 2323 50  0000 C CNN
F 2 "" H 8750 2150 50  0001 C CNN
F 3 "" H 8750 2150 50  0001 C CNN
	1    8750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2250 7400 2200
Wire Wire Line
	7400 2200 8300 2200
Wire Wire Line
	8750 2200 8750 2150
Wire Wire Line
	8300 2250 8300 2200
Connection ~ 8300 2200
Wire Wire Line
	8300 2200 8750 2200
Wire Wire Line
	10150 2250 10150 2200
Wire Wire Line
	10150 2200 9250 2200
Connection ~ 8750 2200
Wire Wire Line
	9250 2250 9250 2200
Connection ~ 9250 2200
Wire Wire Line
	9250 2200 8750 2200
Wire Wire Line
	7400 2850 7400 2900
Wire Wire Line
	7400 2900 8300 2900
Wire Wire Line
	8750 2900 8750 3000
Wire Wire Line
	8300 2850 8300 2900
Connection ~ 8300 2900
Wire Wire Line
	8300 2900 8750 2900
Wire Wire Line
	8750 2900 9250 2900
Wire Wire Line
	9250 2900 9250 2850
Connection ~ 8750 2900
Wire Wire Line
	9250 2900 10150 2900
Wire Wire Line
	10150 2900 10150 2850
Connection ~ 9250 2900
Wire Wire Line
	9850 2550 9550 2550
Wire Wire Line
	8950 2550 8600 2550
Wire Wire Line
	8000 2550 7700 2550
Wire Wire Line
	7100 2550 7000 2550
Wire Wire Line
	7000 2550 7000 1850
Wire Wire Line
	7000 1850 11050 1850
Wire Wire Line
	11050 1850 11050 1150
Wire Wire Line
	11050 1150 10450 1150
$Comp
L power:-BATT #PWR0110
U 1 1 6193EB91
P 3000 7150
F 0 "#PWR0110" H 3000 7000 50  0001 C CNN
F 1 "-BATT" H 3015 7323 50  0000 C CNN
F 2 "" H 3000 7150 50  0001 C CNN
F 3 "" H 3000 7150 50  0001 C CNN
	1    3000 7150
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR0111
U 1 1 6193F7FC
P 3000 6950
F 0 "#PWR0111" H 3000 6800 50  0001 C CNN
F 1 "+BATT" H 3015 7123 50  0000 C CNN
F 2 "" H 3000 6950 50  0001 C CNN
F 3 "" H 3000 6950 50  0001 C CNN
	1    3000 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7000 3000 7000
Wire Wire Line
	3000 7000 3000 6950
Wire Wire Line
	2850 7100 3000 7100
Wire Wire Line
	3000 7100 3000 7150
$Comp
L Connector:USB_C_Receptacle_USB2.0 J4
U 1 1 61943C00
P 4950 7200
F 0 "J4" H 5057 8067 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 5057 7976 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_HRO_TYPE-C-31-M-12" H 5100 7200 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 5100 7200 50  0001 C CNN
	1    4950 7200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 61945D99
P 4650 6350
F 0 "R4" V 4445 6350 50  0000 C CNN
F 1 "5.1K" V 4536 6350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4690 6340 50  0001 C CNN
F 3 "~" H 4650 6350 50  0001 C CNN
	1    4650 6350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R3
U 1 1 6194659C
P 4550 6350
F 0 "R3" V 4345 6350 50  0000 C CNN
F 1 "5.1K" V 4436 6350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4590 6340 50  0001 C CNN
F 3 "~" H 4550 6350 50  0001 C CNN
	1    4550 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6600 4550 6500
Wire Wire Line
	4650 6600 4650 6500
Wire Wire Line
	4650 6200 4650 6150
Wire Wire Line
	4650 6150 4600 6150
Wire Wire Line
	4550 6150 4550 6200
$Comp
L power:GND #PWR0112
U 1 1 619584C7
P 4650 6000
F 0 "#PWR0112" H 4650 5750 50  0001 C CNN
F 1 "GND" H 4655 5827 50  0000 C CNN
F 2 "" H 4650 6000 50  0001 C CNN
F 3 "" H 4650 6000 50  0001 C CNN
	1    4650 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 6000 4600 6000
Wire Wire Line
	4600 6000 4600 6150
Connection ~ 4600 6150
Wire Wire Line
	4600 6150 4550 6150
$Comp
L power:GND #PWR0113
U 1 1 6195B963
P 5900 7200
F 0 "#PWR0113" H 5900 6950 50  0001 C CNN
F 1 "GND" H 5905 7027 50  0000 C CNN
F 2 "" H 5900 7200 50  0001 C CNN
F 3 "" H 5900 7200 50  0001 C CNN
	1    5900 7200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 7200 5850 7200
$Comp
L RF_Module:ESP-12E U4
U 1 1 6195EBFE
P 7500 5000
F 0 "U4" H 7264 5981 50  0000 C CNN
F 1 "ESP-12E" H 7264 5890 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 7500 5000 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 7150 5100 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
Text Label 8150 4500 0    50   ~ 0
RXD
Text Label 8150 4700 0    50   ~ 0
TXD
$Comp
L Device:R_US R12
U 1 1 61960FDB
P 8400 4400
F 0 "R12" V 8195 4400 50  0000 C CNN
F 1 "10K" V 8286 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8440 4390 50  0001 C CNN
F 3 "~" H 8400 4400 50  0001 C CNN
	1    8400 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R13
U 1 1 61964BD5
P 8400 5300
F 0 "R13" V 8195 5300 50  0000 C CNN
F 1 "10K" V 8286 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8440 5290 50  0001 C CNN
F 3 "~" H 8400 5300 50  0001 C CNN
	1    8400 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R10
U 1 1 6196702D
P 6600 4400
F 0 "R10" V 6395 4400 50  0000 C CNN
F 1 "10K" V 6486 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6640 4390 50  0001 C CNN
F 3 "~" H 6600 4400 50  0001 C CNN
	1    6600 4400
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 6196B271
P 8850 4750
F 0 "C5" H 8965 4796 50  0000 L CNN
F 1 "10uF" H 8965 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8888 4600 50  0001 C CNN
F 3 "~" H 8850 4750 50  0001 C CNN
F 4 "C15850" H 8850 4750 50  0001 C CNN "LCSC"
	1    8850 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6196C295
P 9150 4750
F 0 "C6" H 9265 4796 50  0000 L CNN
F 1 "100nF" H 9265 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9188 4600 50  0001 C CNN
F 3 "~" H 9150 4750 50  0001 C CNN
F 4 "C307331" H 9150 4750 50  0001 C CNN "LCSC"
	1    9150 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 6196C942
P 9000 4450
F 0 "#PWR0114" H 9000 4300 50  0001 C CNN
F 1 "+3.3V" H 9015 4623 50  0000 C CNN
F 2 "" H 9000 4450 50  0001 C CNN
F 3 "" H 9000 4450 50  0001 C CNN
	1    9000 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4600 8850 4550
Wire Wire Line
	8850 4550 9000 4550
Wire Wire Line
	9000 4550 9000 4450
Wire Wire Line
	9000 4550 9150 4550
Wire Wire Line
	9150 4550 9150 4600
Connection ~ 9000 4550
Wire Wire Line
	9150 4900 9150 5000
Wire Wire Line
	9150 5000 9000 5000
Wire Wire Line
	8850 5000 8850 4900
Wire Wire Line
	8250 5300 8100 5300
Wire Wire Line
	8250 4400 8100 4400
Wire Wire Line
	8100 4500 8150 4500
Wire Wire Line
	8150 4700 8100 4700
Wire Wire Line
	6750 4600 6900 4600
Wire Wire Line
	6900 4400 6750 4400
$Comp
L power:GND #PWR0115
U 1 1 6198B1F4
P 7500 5800
F 0 "#PWR0115" H 7500 5550 50  0001 C CNN
F 1 "GND" H 7505 5627 50  0000 C CNN
F 2 "" H 7500 5800 50  0001 C CNN
F 3 "" H 7500 5800 50  0001 C CNN
	1    7500 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5800 7500 5700
$Comp
L power:+3.3V #PWR0116
U 1 1 6198F600
P 6350 4400
F 0 "#PWR0116" H 6350 4250 50  0001 C CNN
F 1 "+3.3V" V 6365 4528 50  0000 L CNN
F 2 "" H 6350 4400 50  0001 C CNN
F 3 "" H 6350 4400 50  0001 C CNN
	1    6350 4400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 61990124
P 6350 4600
F 0 "#PWR0117" H 6350 4450 50  0001 C CNN
F 1 "+3.3V" V 6365 4728 50  0000 L CNN
F 2 "" H 6350 4600 50  0001 C CNN
F 3 "" H 6350 4600 50  0001 C CNN
	1    6350 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 4400 6350 4400
Wire Wire Line
	6350 4600 6450 4600
$Comp
L power:GND #PWR0118
U 1 1 619974D6
P 9000 5050
F 0 "#PWR0118" H 9000 4800 50  0001 C CNN
F 1 "GND" H 9005 4877 50  0000 C CNN
F 2 "" H 9000 5050 50  0001 C CNN
F 3 "" H 9000 5050 50  0001 C CNN
	1    9000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5050 9000 5000
Connection ~ 9000 5000
Wire Wire Line
	9000 5000 8850 5000
$Comp
L power:+3.3V #PWR0119
U 1 1 6199C343
P 7500 4150
F 0 "#PWR0119" H 7500 4000 50  0001 C CNN
F 1 "+3.3V" H 7515 4323 50  0000 C CNN
F 2 "" H 7500 4150 50  0001 C CNN
F 3 "" H 7500 4150 50  0001 C CNN
	1    7500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4200 7500 4150
$Comp
L power:+3.3V #PWR0120
U 1 1 619A586C
P 8600 4400
F 0 "#PWR0120" H 8600 4250 50  0001 C CNN
F 1 "+3.3V" V 8615 4528 50  0000 L CNN
F 2 "" H 8600 4400 50  0001 C CNN
F 3 "" H 8600 4400 50  0001 C CNN
	1    8600 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 619A5EA3
P 8600 5300
F 0 "#PWR0121" H 8600 5050 50  0001 C CNN
F 1 "GND" V 8605 5172 50  0000 R CNN
F 2 "" H 8600 5300 50  0001 C CNN
F 3 "" H 8600 5300 50  0001 C CNN
	1    8600 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 4400 8550 4400
Wire Wire Line
	8550 5300 8600 5300
$Comp
L Device:R_US R11
U 1 1 6196794E
P 6600 4600
F 0 "R11" V 6395 4600 50  0000 C CNN
F 1 "10K" V 6486 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6640 4590 50  0001 C CNN
F 3 "~" H 6600 4600 50  0001 C CNN
	1    6600 4600
	0    1    1    0   
$EndComp
$Comp
L Interface_USB:CH340G U2
U 1 1 619C4467
P 4150 4700
F 0 "U2" H 3756 4011 50  0000 C CNN
F 1 "CH340G" H 3757 3920 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4200 4150 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 3800 5500 50  0001 C CNN
	1    4150 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 619C60EE
P 3350 5000
F 0 "Y1" V 3304 5131 50  0000 L CNN
F 1 "12MHz" V 3395 5131 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_0603-2Pin_6.0x3.5mm" H 3350 5000 50  0001 C CNN
F 3 "~" H 3350 5000 50  0001 C CNN
	1    3350 5000
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 619C6EB4
P 3100 4850
F 0 "C2" V 2848 4850 50  0000 C CNN
F 1 "22pF" V 2939 4850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3138 4700 50  0001 C CNN
F 3 "~" H 3100 4850 50  0001 C CNN
F 4 "C1555" H 3100 4850 50  0001 C CNN "LCSC"
	1    3100 4850
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 619CB090
P 3100 5150
F 0 "C3" V 2848 5150 50  0000 C CNN
F 1 "22pF" V 2939 5150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3138 5000 50  0001 C CNN
F 3 "~" H 3100 5150 50  0001 C CNN
F 4 "C1555" H 3100 5150 50  0001 C CNN "LCSC"
	1    3100 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 4900 3550 4900
Wire Wire Line
	3550 4900 3550 4850
Wire Wire Line
	3550 4850 3350 4850
Connection ~ 3350 4850
Wire Wire Line
	3350 4850 3250 4850
Wire Wire Line
	3750 5100 3550 5100
Wire Wire Line
	3550 5100 3550 5150
Wire Wire Line
	3550 5150 3350 5150
Connection ~ 3350 5150
Wire Wire Line
	3350 5150 3250 5150
Wire Wire Line
	2950 5150 2900 5150
Wire Wire Line
	2900 5150 2900 5000
Wire Wire Line
	2900 4850 2950 4850
$Comp
L power:GND #PWR0122
U 1 1 619E081A
P 2850 5000
F 0 "#PWR0122" H 2850 4750 50  0001 C CNN
F 1 "GND" V 2855 4872 50  0000 R CNN
F 2 "" H 2850 5000 50  0001 C CNN
F 3 "" H 2850 5000 50  0001 C CNN
	1    2850 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 5000 2900 5000
Connection ~ 2900 5000
Wire Wire Line
	2900 5000 2900 4850
Text Label 4950 6550 1    50   ~ 0
D-
Text Label 5150 6550 1    50   ~ 0
D+
Wire Wire Line
	5150 6550 5150 6600
Wire Wire Line
	5150 6600 5050 6600
Connection ~ 5150 6600
Wire Wire Line
	4950 6600 4950 6550
Wire Wire Line
	4950 6600 4850 6600
Connection ~ 4950 6600
Text Label 3750 4600 2    50   ~ 0
D+
Text Label 3750 4700 2    50   ~ 0
D-
$Comp
L Device:R_US R8
U 1 1 619FF509
P 4700 4300
F 0 "R8" V 4495 4300 50  0000 C CNN
F 1 "470" V 4586 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4740 4290 50  0001 C CNN
F 3 "~" H 4700 4300 50  0001 C CNN
	1    4700 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R9
U 1 1 61A002D2
P 4700 4400
F 0 "R9" V 4495 4400 50  0000 C CNN
F 1 "470" V 4586 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4740 4390 50  0001 C CNN
F 3 "~" H 4700 4400 50  0001 C CNN
	1    4700 4400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0123
U 1 1 61A14C0C
P 4150 4050
F 0 "#PWR0123" H 4150 3900 50  0001 C CNN
F 1 "+3.3V" H 4165 4223 50  0000 C CNN
F 2 "" H 4150 4050 50  0001 C CNN
F 3 "" H 4150 4050 50  0001 C CNN
	1    4150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4100 4150 4100
Wire Wire Line
	4150 4050 4150 4100
Connection ~ 4150 4100
Text Label 4850 4400 0    50   ~ 0
RXD
Text Label 4850 4300 0    50   ~ 0
TXD
$Comp
L power:GND #PWR0124
U 1 1 61A45FE5
P 4150 5300
F 0 "#PWR0124" H 4150 5050 50  0001 C CNN
F 1 "GND" H 4155 5127 50  0000 C CNN
F 2 "" H 4150 5300 50  0001 C CNN
F 3 "" H 4150 5300 50  0001 C CNN
	1    4150 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 61A4AB13
P 6000 7500
F 0 "R1" H 6068 7546 50  0000 L CNN
F 1 "10K" H 6068 7455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6040 7490 50  0001 C CNN
F 3 "~" H 6000 7500 50  0001 C CNN
	1    6000 7500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 61A4B9D3
P 6150 7500
F 0 "#PWR0125" H 6150 7250 50  0001 C CNN
F 1 "GND" H 6155 7327 50  0000 C CNN
F 2 "" H 6150 7500 50  0001 C CNN
F 3 "" H 6150 7500 50  0001 C CNN
	1    6150 7500
	0    -1   -1   0   
$EndComp
Text Label 4550 5100 0    50   ~ 0
RTS
Text Label 4550 5000 0    50   ~ 0
DTR
$Comp
L Device:R_US R2
U 1 1 61A55B36
P 1750 1400
F 0 "R2" V 1545 1400 50  0000 C CNN
F 1 "10K" V 1636 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1790 1390 50  0001 C CNN
F 3 "~" H 1750 1400 50  0001 C CNN
	1    1750 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 1200 1400 1400
Text Label 1850 1500 2    50   ~ 0
boost_en_H
Wire Wire Line
	1900 1500 1900 1400
Connection ~ 1900 1400
Connection ~ 1400 1200
Wire Wire Line
	1400 1200 1800 1200
Connection ~ 1400 1400
Wire Wire Line
	1400 1700 2200 1700
Connection ~ 1400 1700
Wire Wire Line
	1400 1400 1600 1400
Wire Wire Line
	1900 1500 1850 1500
Text Label 4350 6600 1    50   ~ 0
VBUS
Text Label 1250 2900 2    50   ~ 0
VBUS
Text Label 1600 2650 2    50   ~ 0
boost_en_H
$Comp
L power:GND #PWR0126
U 1 1 61AC1870
P 1600 3150
F 0 "#PWR0126" H 1600 2900 50  0001 C CNN
F 1 "GND" H 1605 2977 50  0000 C CNN
F 2 "" H 1600 3150 50  0001 C CNN
F 3 "" H 1600 3150 50  0001 C CNN
	1    1600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2700 1600 2650
Wire Wire Line
	1300 2900 1250 2900
Wire Wire Line
	1300 3150 1600 3150
Connection ~ 1600 3150
$Comp
L power:+5V #PWR0127
U 1 1 61ADEEB8
P 4350 6050
F 0 "#PWR0127" H 4350 5900 50  0001 C CNN
F 1 "+5V" H 4365 6223 50  0000 C CNN
F 2 "" H 4350 6050 50  0001 C CNN
F 3 "" H 4350 6050 50  0001 C CNN
	1    4350 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6250 4350 6600
$Comp
L Device:Polyfuse_Small F1
U 1 1 61AE5217
P 4350 6150
F 0 "F1" V 4145 6150 50  0000 C CNN
F 1 "2A_polyfuse" V 4236 6150 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric" H 4400 5950 50  0001 L CNN
F 3 "~" H 4350 6150 50  0001 C CNN
	1    4350 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 61AF8B0F
P 1300 3050
F 0 "R7" H 1232 3004 50  0000 R CNN
F 1 "10K" H 1232 3095 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1300 3050 50  0001 C CNN
F 3 "~" H 1300 3050 50  0001 C CNN
	1    1300 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NMOS_DGS Q1
U 1 1 61AB6C01
P 1500 2900
F 0 "Q1" H 1704 2946 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 1704 2855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1700 3000 50  0001 C CNN
F 3 "~" H 1500 2900 50  0001 C CNN
	1    1500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3100 1600 3150
Wire Wire Line
	1300 2950 1300 2900
Connection ~ 1300 2900
$Comp
L Transistor_BJT:UMH3N Q2
U 1 1 61B16B10
P 5500 4750
F 0 "Q2" H 5790 4796 50  0000 L CNN
F 1 "UMH3N" H 5790 4705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5505 4310 50  0001 C CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/discrete/transistor/digital/emh3t2r-e.pdf" H 5650 4750 50  0001 C CNN
	1    5500 4750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:UMH3N Q2
U 2 1 61B17C0E
P 6050 5000
F 0 "Q2" H 6340 5046 50  0000 L CNN
F 1 "UMH3N" H 6340 4955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6055 4560 50  0001 C CNN
F 3 "http://rohmfs.rohm.com/en/products/databook/datasheet/discrete/transistor/digital/emh3t2r-e.pdf" H 6200 5000 50  0001 C CNN
	2    6050 5000
	1    0    0    -1  
$EndComp
Text Label 5700 4550 0    50   ~ 0
RST
Text Label 5700 4950 0    50   ~ 0
RTS
Wire Wire Line
	5850 5000 5700 5000
Wire Wire Line
	5700 5000 5700 4950
Text Label 6250 5200 0    50   ~ 0
DTR
Text Label 6250 4800 0    50   ~ 0
GPIO0
Wire Wire Line
	6250 5200 6250 5250
Wire Wire Line
	6250 5250 5200 5250
Wire Wire Line
	5200 5250 5200 4750
Wire Wire Line
	5200 4750 5300 4750
$Comp
L power:+BATT #PWR0128
U 1 1 61B39D27
P 1800 6800
F 0 "#PWR0128" H 1800 6650 50  0001 C CNN
F 1 "+BATT" V 1815 6927 50  0000 L CNN
F 2 "" H 1800 6800 50  0001 C CNN
F 3 "" H 1800 6800 50  0001 C CNN
	1    1800 6800
	0    1    1    0   
$EndComp
$Comp
L power:-BATT #PWR0129
U 1 1 61B3AC77
P 1800 7200
F 0 "#PWR0129" H 1800 7050 50  0001 C CNN
F 1 "-BATT" V 1815 7327 50  0000 L CNN
F 2 "" H 1800 7200 50  0001 C CNN
F 3 "" H 1800 7200 50  0001 C CNN
	1    1800 7200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 61B3B458
P 1000 6800
F 0 "#PWR0130" H 1000 6650 50  0001 C CNN
F 1 "+5V" V 1015 6928 50  0000 L CNN
F 2 "" H 1000 6800 50  0001 C CNN
F 3 "" H 1000 6800 50  0001 C CNN
	1    1000 6800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 61B3BDF4
P 1000 7200
F 0 "#PWR0131" H 1000 6950 50  0001 C CNN
F 1 "GND" V 1005 7072 50  0000 R CNN
F 2 "" H 1000 7200 50  0001 C CNN
F 3 "" H 1000 7200 50  0001 C CNN
	1    1000 7200
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U3
U 1 1 61B62B1C
P 2850 2800
F 0 "U3" H 2850 3042 50  0000 C CNN
F 1 "AMS1117-3.3" H 2850 2951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2850 3000 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2950 2550 50  0001 C CNN
	1    2850 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0132
U 1 1 6193E6E1
P 2400 2750
F 0 "#PWR0132" H 2400 2600 50  0001 C CNN
F 1 "+5V" H 2415 2923 50  0000 C CNN
F 2 "" H 2400 2750 50  0001 C CNN
F 3 "" H 2400 2750 50  0001 C CNN
	1    2400 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0133
U 1 1 6193EE5D
P 3300 2750
F 0 "#PWR0133" H 3300 2600 50  0001 C CNN
F 1 "+3.3V" H 3315 2923 50  0000 C CNN
F 2 "" H 3300 2750 50  0001 C CNN
F 3 "" H 3300 2750 50  0001 C CNN
	1    3300 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 6193F6B4
P 2850 3150
F 0 "#PWR0134" H 2850 2900 50  0001 C CNN
F 1 "GND" H 2855 2977 50  0000 C CNN
F 2 "" H 2850 3150 50  0001 C CNN
F 3 "" H 2850 3150 50  0001 C CNN
	1    2850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2800 3300 2750
Wire Wire Line
	2550 2800 2450 2800
Wire Wire Line
	2400 2800 2400 2750
Wire Wire Line
	2850 3150 2850 3100
$Comp
L Device:C_Small C8
U 1 1 6195469A
P 3200 3050
F 0 "C8" H 3292 3096 50  0000 L CNN
F 1 "10uF" H 3292 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3200 3050 50  0001 C CNN
F 3 "~" H 3200 3050 50  0001 C CNN
F 4 "C15850" H 3200 3050 50  0001 C CNN "LCSC"
	1    3200 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 6195532D
P 2450 3050
F 0 "C7" H 2542 3096 50  0000 L CNN
F 1 "10uF" H 2542 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2450 3050 50  0001 C CNN
F 3 "~" H 2450 3050 50  0001 C CNN
F 4 "C15850" H 2450 3050 50  0001 C CNN "LCSC"
	1    2450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2800 3200 2800
Wire Wire Line
	3200 3150 2850 3150
Connection ~ 2850 3150
Wire Wire Line
	2850 3150 2450 3150
Wire Wire Line
	2450 2950 2450 2800
Connection ~ 2450 2800
Wire Wire Line
	2450 2800 2400 2800
Wire Wire Line
	3200 2950 3200 2800
Connection ~ 3200 2800
Wire Wire Line
	3200 2800 3300 2800
$Comp
L Device:Q_NMOS_DGS Q3
U 1 1 6197D800
P 10400 4750
F 0 "Q3" H 10604 4796 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 10604 4705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10600 4850 50  0001 C CNN
F 3 "~" H 10400 4750 50  0001 C CNN
	1    10400 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R15
U 1 1 619B0762
P 10250 5000
F 0 "R15" V 10045 5000 50  0000 C CNN
F 1 "10K" V 10136 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10250 5000 50  0001 C CNN
F 3 "~" H 10250 5000 50  0001 C CNN
	1    10250 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R14
U 1 1 619B2F7C
P 10250 4500
F 0 "R14" V 10045 4500 50  0000 C CNN
F 1 "10K" V 10136 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 10250 4500 50  0001 C CNN
F 3 "~" H 10250 4500 50  0001 C CNN
	1    10250 4500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0135
U 1 1 619B3F55
P 10050 4500
F 0 "#PWR0135" H 10050 4350 50  0001 C CNN
F 1 "+5V" V 10065 4628 50  0000 L CNN
F 2 "" H 10050 4500 50  0001 C CNN
F 3 "" H 10050 4500 50  0001 C CNN
	1    10050 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0136
U 1 1 619B4CF0
P 10050 5000
F 0 "#PWR0136" H 10050 4850 50  0001 C CNN
F 1 "+3.3V" V 10065 5128 50  0000 L CNN
F 2 "" H 10050 5000 50  0001 C CNN
F 3 "" H 10050 5000 50  0001 C CNN
	1    10050 5000
	0    -1   -1   0   
$EndComp
Text Label 10500 5000 0    50   ~ 0
LED_SIG_3.3
Text Label 10500 4500 0    50   ~ 0
LED_SIG_5
Wire Wire Line
	10200 4750 10100 4750
Wire Wire Line
	10100 4750 10100 5000
Wire Wire Line
	10100 5000 10050 5000
Wire Wire Line
	10150 5000 10100 5000
Connection ~ 10100 5000
Wire Wire Line
	10350 5000 10500 5000
Wire Wire Line
	10500 5000 10500 4950
Wire Wire Line
	10500 4550 10500 4500
Wire Wire Line
	10500 4500 10350 4500
Wire Wire Line
	10150 4500 10050 4500
Text Label 7100 1150 2    50   ~ 0
LED_SIG_5
Text Notes 1000 7400 0    50   ~ 0
TP4056 CONNECTOR\n
$Comp
L arduino:TP4056 U5
U 1 1 619DEDD8
P 1400 7000
F 0 "U5" H 1400 7465 50  0000 C CNN
F 1 "TP4056" H 1400 7374 50  0000 C CNN
F 2 "Arduino:TP4056" H 1400 7000 50  0001 C CNN
F 3 "" H 1400 7000 50  0001 C CNN
	1    1400 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 61A46AAE
P 5400 850
F 0 "C11" H 5492 896 50  0000 L CNN
F 1 "10uF" H 5492 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5400 850 50  0001 C CNN
F 3 "~" H 5400 850 50  0001 C CNN
F 4 "C15850" H 5400 850 50  0001 C CNN "LCSC"
	1    5400 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 61A47871
P 5900 850
F 0 "C13" H 5992 896 50  0000 L CNN
F 1 "10uF" H 5992 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5900 850 50  0001 C CNN
F 3 "~" H 5900 850 50  0001 C CNN
F 4 "C15850" H 5900 850 50  0001 C CNN "LCSC"
	1    5900 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 61A4F138
P 5900 850
F 0 "C14" H 5992 896 50  0000 L CNN
F 1 "10uF" H 5992 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5900 850 50  0001 C CNN
F 3 "~" H 5900 850 50  0001 C CNN
F 4 "C15850" H 5900 850 50  0001 C CNN "LCSC"
	1    5900 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C17
U 1 1 61A56EB6
P 6350 850
F 0 "C17" H 6442 896 50  0000 L CNN
F 1 "10uF" H 6442 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6350 850 50  0001 C CNN
F 3 "~" H 6350 850 50  0001 C CNN
F 4 "C15850" H 6350 850 50  0001 C CNN "LCSC"
	1    6350 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 61A5EA00
P 4950 850
F 0 "C9" H 5042 896 50  0000 L CNN
F 1 "10uF" H 5042 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4950 850 50  0001 C CNN
F 3 "~" H 4950 850 50  0001 C CNN
F 4 "C15850" H 4950 850 50  0001 C CNN "LCSC"
	1    4950 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 61A756D1
P 5400 1500
F 0 "C12" H 5492 1546 50  0000 L CNN
F 1 "10uF" H 5492 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5400 1500 50  0001 C CNN
F 3 "~" H 5400 1500 50  0001 C CNN
F 4 "C15850" H 5400 1500 50  0001 C CNN "LCSC"
	1    5400 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 61A756D7
P 5900 1500
F 0 "C15" H 5992 1546 50  0000 L CNN
F 1 "10uF" H 5992 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5900 1500 50  0001 C CNN
F 3 "~" H 5900 1500 50  0001 C CNN
F 4 "C15850" H 5900 1500 50  0001 C CNN "LCSC"
	1    5900 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 61A756DD
P 5900 1500
F 0 "C16" H 5992 1546 50  0000 L CNN
F 1 "10uF" H 5992 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5900 1500 50  0001 C CNN
F 3 "~" H 5900 1500 50  0001 C CNN
F 4 "C15850" H 5900 1500 50  0001 C CNN "LCSC"
	1    5900 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 61A756E3
P 6350 1500
F 0 "C18" H 6442 1546 50  0000 L CNN
F 1 "10uF" H 6442 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6350 1500 50  0001 C CNN
F 3 "~" H 6350 1500 50  0001 C CNN
F 4 "C15850" H 6350 1500 50  0001 C CNN "LCSC"
	1    6350 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 61A756E9
P 4950 1500
F 0 "C10" H 5042 1546 50  0000 L CNN
F 1 "10uF" H 5042 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4950 1500 50  0001 C CNN
F 3 "~" H 4950 1500 50  0001 C CNN
F 4 "C15850" H 4950 1500 50  0001 C CNN "LCSC"
	1    4950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 950  5400 950 
Connection ~ 5400 950 
Wire Wire Line
	5400 950  5600 950 
Connection ~ 5900 950 
Wire Wire Line
	5900 950  6350 950 
Wire Wire Line
	6350 750  5900 750 
Connection ~ 5400 750 
Wire Wire Line
	5400 750  4950 750 
Connection ~ 5900 750 
Wire Wire Line
	5900 750  5600 750 
Wire Wire Line
	4950 1400 5400 1400
Connection ~ 5400 1400
Wire Wire Line
	5400 1400 5600 1400
Connection ~ 5900 1400
Wire Wire Line
	5900 1400 6350 1400
Wire Wire Line
	6350 1600 5900 1600
Connection ~ 5400 1600
Wire Wire Line
	5400 1600 4950 1600
Connection ~ 5900 1600
Wire Wire Line
	5900 1600 5600 1600
$Comp
L power:GND #PWR02
U 1 1 61AA0B32
P 5600 950
F 0 "#PWR02" H 5600 700 50  0001 C CNN
F 1 "GND" H 5605 777 50  0000 C CNN
F 2 "" H 5600 950 50  0001 C CNN
F 3 "" H 5600 950 50  0001 C CNN
	1    5600 950 
	1    0    0    -1  
$EndComp
Connection ~ 5600 950 
Wire Wire Line
	5600 950  5900 950 
$Comp
L power:GND #PWR04
U 1 1 61AA14B1
P 5600 1600
F 0 "#PWR04" H 5600 1350 50  0001 C CNN
F 1 "GND" H 5605 1427 50  0000 C CNN
F 2 "" H 5600 1600 50  0001 C CNN
F 3 "" H 5600 1600 50  0001 C CNN
	1    5600 1600
	1    0    0    -1  
$EndComp
Connection ~ 5600 1600
Wire Wire Line
	5600 1600 5400 1600
$Comp
L power:VCC #PWR03
U 1 1 61AAC572
P 5600 1400
F 0 "#PWR03" H 5600 1250 50  0001 C CNN
F 1 "VCC" H 5615 1573 50  0000 C CNN
F 2 "" H 5600 1400 50  0001 C CNN
F 3 "" H 5600 1400 50  0001 C CNN
	1    5600 1400
	1    0    0    -1  
$EndComp
Connection ~ 5600 1400
Wire Wire Line
	5600 1400 5900 1400
$Comp
L power:VCC #PWR01
U 1 1 61AAD010
P 5600 750
F 0 "#PWR01" H 5600 600 50  0001 C CNN
F 1 "VCC" H 5615 923 50  0000 C CNN
F 2 "" H 5600 750 50  0001 C CNN
F 3 "" H 5600 750 50  0001 C CNN
	1    5600 750 
	1    0    0    -1  
$EndComp
Connection ~ 5600 750 
Wire Wire Line
	5600 750  5400 750 
Text Notes 1250 2050 0    50   ~ 0
boost converter from VBATT to 5V
Text Notes 850  3500 0    50   ~ 0
disable boost when VBUS present\n
Text Notes 2250 3500 0    50   ~ 0
3.3V regulated output for ESP\n
Text Notes 3850 3750 0    50   ~ 0
USB to Serial\n
Text Notes 5350 5450 0    50   ~ 0
Latch reset circuit\n
Text Notes 6200 2250 0    50   ~ 0
ARGB LED Matrix\n
Text Notes 9750 5200 0    50   ~ 0
3.3V to 5V Logic Level Converter\n
$EndSCHEMATC
