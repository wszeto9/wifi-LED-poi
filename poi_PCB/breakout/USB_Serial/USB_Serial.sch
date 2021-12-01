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
L Connector:Conn_01x08_Female J2
U 1 1 61AD4399
P 6650 3200
F 0 "J2" H 6678 3176 50  0000 L CNN
F 1 "Conn_01x08_Female" H 6678 3085 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6650 3200 50  0001 C CNN
F 3 "~" H 6650 3200 50  0001 C CNN
	1    6650 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J1
U 1 1 61AD48C7
P 4300 3350
F 0 "J1" H 4192 2725 50  0000 C CNN
F 1 "Conn_01x08_Female" H 4192 2816 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4300 3350 50  0001 C CNN
F 3 "~" H 4300 3350 50  0001 C CNN
	1    4300 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 4050 6250 4050
Wire Wire Line
	6250 4050 6250 2900
Wire Wire Line
	6250 2900 6450 2900
Wire Wire Line
	6450 3000 5700 3000
Wire Wire Line
	5700 3000 5700 3050
Wire Wire Line
	5700 3150 6450 3150
Wire Wire Line
	6450 3150 6450 3100
Wire Wire Line
	6450 3200 6000 3200
Wire Wire Line
	6000 3200 6000 2700
Wire Wire Line
	6000 2700 5200 2700
Wire Wire Line
	5200 2700 5200 2850
Wire Wire Line
	6450 3300 5850 3300
Wire Wire Line
	5850 3300 5850 3250
Wire Wire Line
	5850 3250 4900 3250
Wire Wire Line
	4900 3250 4900 3350
Wire Wire Line
	4900 3450 4800 3450
Wire Wire Line
	4800 3450 4800 3200
Wire Wire Line
	4800 3200 5950 3200
Wire Wire Line
	5950 3200 5950 3400
Wire Wire Line
	5950 3400 6450 3400
Wire Wire Line
	5700 3350 5200 3350
Wire Wire Line
	5200 3350 5200 3600
Wire Wire Line
	5700 3450 5300 3450
Wire Wire Line
	5300 3450 5300 3550
Wire Wire Line
	5300 3550 4500 3550
Wire Wire Line
	5700 3550 5350 3550
Wire Wire Line
	5350 3550 5350 3500
Wire Wire Line
	5350 3500 4500 3500
Wire Wire Line
	4500 3500 4500 3450
Wire Wire Line
	5700 3650 5800 3650
Wire Wire Line
	5800 3650 5800 4300
Wire Wire Line
	5800 4300 4050 4300
Wire Wire Line
	4050 4300 4050 3350
Wire Wire Line
	4050 3350 4500 3350
Wire Wire Line
	5700 3750 5750 3750
Wire Wire Line
	5750 3750 5750 4200
Wire Wire Line
	5750 4200 4250 4200
Wire Wire Line
	4250 4200 4250 3250
Wire Wire Line
	4250 3250 4500 3250
Wire Wire Line
	5700 3850 5700 4100
Wire Wire Line
	5700 4100 4700 4100
Wire Wire Line
	4700 4100 4700 3150
Wire Wire Line
	4700 3150 4500 3150
Wire Wire Line
	4900 3050 4900 3150
Wire Wire Line
	4500 3050 4900 3050
Wire Wire Line
	5300 2850 5300 2800
Wire Wire Line
	5300 2800 4700 2800
Wire Wire Line
	4700 2800 4700 2950
Wire Wire Line
	4700 2950 4500 2950
$Comp
L Interface_USB:CH340G U1
U 1 1 61ADE2C6
P 5300 3450
F 0 "U1" H 5300 2761 50  0000 C CNN
F 1 "CH340G" H 5300 2670 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5350 2900 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 4950 4250 50  0001 C CNN
	1    5300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3650 4800 3650
Wire Wire Line
	4800 3650 4800 3600
Wire Wire Line
	4800 3600 5200 3600
Connection ~ 5200 3600
Wire Wire Line
	5200 3600 5200 3650
Wire Wire Line
	4900 3650 4900 3750
Wire Wire Line
	4900 3750 4800 3750
Wire Wire Line
	4800 3750 4800 4500
Wire Wire Line
	4800 4500 6400 4500
Wire Wire Line
	6400 4500 6400 3500
Wire Wire Line
	6400 3500 6450 3500
Wire Wire Line
	6450 3600 6050 3600
Wire Wire Line
	6050 3600 6050 4400
Wire Wire Line
	6050 4400 4900 4400
Wire Wire Line
	4900 4400 4900 3850
$EndSCHEMATC
