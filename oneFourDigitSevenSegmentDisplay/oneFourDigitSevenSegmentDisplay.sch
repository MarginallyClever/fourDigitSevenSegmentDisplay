EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:oneFourDigitSevenSegmentDisplay-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Seven segment Arduino demo"
Date "2017-02-19"
Rev "1"
Comp "Marginally Clever Robots"
Comment1 "Dan Royer (dan@marginallyclever.com)"
Comment2 "https://www.marginallyclever.com/2016/03/solve-4-character-seven-segment-display/"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_8 P1
U 1 1 5517C2C1
P 5450 5450
F 0 "P1" V 5400 5450 60  0000 C CNN
F 1 "Power" V 5500 5450 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" H 5450 5450 60  0001 C CNN
F 3 "" H 5450 5450 60  0000 C CNN
	1    5450 5450
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 5517C323
P 5450 6250
F 0 "P2" V 5400 6250 60  0000 C CNN
F 1 "Analog" V 5500 6250 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" H 5450 6250 60  0001 C CNN
F 3 "" H 5450 6250 60  0000 C CNN
	1    5450 6250
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P4
U 1 1 5517C366
P 5775 6150
F 0 "P4" V 5725 6150 60  0000 C CNN
F 1 "Digital" V 5825 6150 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" H 5775 6150 60  0001 C CNN
F 3 "" H 5775 6150 60  0000 C CNN
	1    5775 6150
	-1   0    0    -1  
$EndComp
$Comp
L CONN_10 P3
U 1 1 5517C46C
P 5775 5150
F 0 "P3" V 5725 5150 60  0000 C CNN
F 1 "Digital" V 5825 5150 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" H 5775 5150 60  0001 C CNN
F 3 "" H 5775 5150 60  0000 C CNN
	1    5775 5150
	-1   0    0    -1  
$EndComp
Text Label 4350 5300 0    60   ~ 0
Reset
Text Label 4650 4925 1    60   ~ 0
Vin
Text Label 5025 4925 1    60   ~ 0
IOREF
Text Label 4350 6000 0    60   ~ 0
A0
Text Label 4350 6100 0    60   ~ 0
A1
Text Label 4350 6200 0    60   ~ 0
A2
Text Label 4350 6300 0    60   ~ 0
A3
Text Label 4350 6400 0    60   ~ 0
A4(SDA)
Text Label 4350 6500 0    60   ~ 0
A5(SCL)
Text Label 6275 6500 0    60   ~ 0
0(Rx)
Text Label 6275 6300 0    60   ~ 0
2
Text Label 6275 6400 0    60   ~ 0
1(Tx)
Text Label 6275 6200 0    60   ~ 0
3(**)
Text Label 6275 6100 0    60   ~ 0
4
Text Label 6275 6000 0    60   ~ 0
5(**)
Text Label 6275 5900 0    60   ~ 0
6(**)
Text Label 6275 5800 0    60   ~ 0
7
Text Label 6275 5600 0    60   ~ 0
8
Text Label 6275 5500 0    60   ~ 0
9(**)
Text Label 6275 5400 0    60   ~ 0
10(**/SS)
Text Label 6275 5300 0    60   ~ 0
11(**/MOSI)
Text Label 6275 5200 0    60   ~ 0
12(MISO)
Text Label 6275 5100 0    60   ~ 0
13(SCK)
Text Label 6350 4900 0    60   ~ 0
AREF
$Comp
L GND #PWR01
U 1 1 5517CC27
P 6200 6675
F 0 "#PWR01" H 6200 6675 30  0001 C CNN
F 1 "GND" H 6200 6605 30  0001 C CNN
F 2 "" H 6200 6675 60  0000 C CNN
F 3 "" H 6200 6675 60  0000 C CNN
	1    6200 6675
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5517CC7B
P 5025 6675
F 0 "#PWR02" H 5025 6675 30  0001 C CNN
F 1 "GND" H 5025 6605 30  0001 C CNN
F 2 "" H 5025 6675 60  0000 C CNN
F 3 "" H 5025 6675 60  0000 C CNN
	1    5025 6675
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5517CCC2
P 4775 4925
F 0 "#PWR03" H 4775 5015 20  0001 C CNN
F 1 "+5V" H 4775 5015 30  0000 C CNN
F 2 "" H 4775 4925 60  0000 C CNN
F 3 "" H 4775 4925 60  0000 C CNN
	1    4775 4925
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 5517CCDA
P 4900 4925
F 0 "#PWR04" H 4900 4885 30  0001 C CNN
F 1 "+3.3V" H 4900 5035 30  0000 C CNN
F 2 "" H 4900 4925 60  0000 C CNN
F 3 "" H 4900 4925 60  0000 C CNN
	1    4900 4925
	1    0    0    -1  
$EndComp
NoConn ~ 5100 5100
Text Label 6275 4800 0    60   ~ 0
A4_2(SDA)
Text Label 6275 4700 0    60   ~ 0
A5_2(SCL)
$Comp
L CONN_1 P5
U 1 1 551BBC06
P 6600 4225
F 0 "P5" H 6680 4225 40  0000 L CNN
F 1 "CONN_1" H 6600 4280 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 6600 4225 60  0001 C CNN
F 3 "" H 6600 4225 60  0000 C CNN
	1    6600 4225
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P6
U 1 1 551BBD10
P 6675 4225
F 0 "P6" H 6755 4225 40  0000 L CNN
F 1 "CONN_1" H 6675 4280 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 6675 4225 60  0001 C CNN
F 3 "" H 6675 4225 60  0000 C CNN
	1    6675 4225
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P7
U 1 1 551BBD30
P 6750 4225
F 0 "P7" H 6830 4225 40  0000 L CNN
F 1 "CONN_1" H 6750 4280 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 6750 4225 60  0001 C CNN
F 3 "" H 6750 4225 60  0000 C CNN
	1    6750 4225
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P8
U 1 1 551BBD52
P 6825 4225
F 0 "P8" H 6905 4225 40  0000 L CNN
F 1 "CONN_1" H 6825 4280 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 6825 4225 60  0001 C CNN
F 3 "" H 6825 4225 60  0000 C CNN
	1    6825 4225
	0    -1   -1   0   
$EndComp
NoConn ~ 6600 4375
NoConn ~ 6675 4375
NoConn ~ 6750 4375
NoConn ~ 6825 4375
NoConn ~ 6850 4700
NoConn ~ 6850 4800
NoConn ~ 4325 6500
NoConn ~ 4325 6400
NoConn ~ 4325 6300
NoConn ~ 4325 6200
NoConn ~ 4325 6100
NoConn ~ 4325 5300
NoConn ~ 4650 4925
NoConn ~ 5025 4925
NoConn ~ 6850 6500
NoConn ~ 6850 6400
$Comp
L CA56-12 AFF1
U 1 1 58A9E466
P 9300 4600
F 0 "AFF1" H 9300 5400 50  0000 C CNN
F 1 "CA56-12" H 9300 5300 50  0000 C CNN
F 2 "" H 8800 4600 50  0000 C CNN
F 3 "" H 8800 4600 50  0000 C CNN
	1    9300 4600
	1    0    0    -1  
$EndComp
NoConn ~ 6850 4900
Wire Wire Line
	3775 6000 5100 6000
Wire Wire Line
	4325 6100 5100 6100
Wire Wire Line
	4325 6200 5100 6200
Wire Wire Line
	4325 6300 5100 6300
Wire Wire Line
	4325 6400 5100 6400
Wire Wire Line
	4325 6500 5100 6500
Wire Wire Line
	6125 5600 9100 5600
Wire Wire Line
	6125 5500 9000 5500
Wire Wire Line
	6125 5400 7950 5400
Wire Wire Line
	7850 5300 6125 5300
Wire Wire Line
	6125 5200 7750 5200
Wire Wire Line
	6125 5100 7650 5100
Wire Wire Line
	6125 4900 6850 4900
Wire Wire Line
	6125 4800 6850 4800
Wire Wire Line
	6125 4700 6850 4700
Wire Wire Line
	4900 5400 5100 5400
Wire Wire Line
	4775 5500 5100 5500
Wire Wire Line
	5025 5600 5025 6675
Wire Wire Line
	4325 5300 5100 5300
Wire Wire Line
	6200 5000 6200 6675
Wire Wire Line
	6200 5000 6125 5000
Wire Wire Line
	9400 6000 6125 6000
Wire Wire Line
	9300 5900 6125 5900
Wire Wire Line
	9200 5800 6125 5800
Wire Wire Line
	9700 6300 6125 6300
Wire Wire Line
	9600 6200 6125 6200
Wire Wire Line
	9500 6100 6125 6100
Wire Wire Line
	6125 6500 6850 6500
Wire Wire Line
	6125 6400 6850 6400
Wire Wire Line
	4900 5400 4900 4925
Wire Wire Line
	5025 4925 5025 5200
Wire Wire Line
	5025 5200 5100 5200
Wire Wire Line
	4775 4675 4775 5500
Wire Wire Line
	4650 4925 4650 5800
Wire Wire Line
	4650 5800 5100 5800
Wire Wire Line
	5025 5600 5100 5600
Wire Wire Line
	5100 5700 5025 5700
Connection ~ 5025 5700
Wire Wire Line
	9700 5300 9700 6300
Wire Wire Line
	9600 5300 9600 6200
Wire Wire Line
	9500 5300 9500 6100
Wire Wire Line
	9400 5300 9400 6000
Wire Wire Line
	9300 5300 9300 5900
Wire Wire Line
	9200 5300 9200 5800
Wire Wire Line
	7950 3600 10100 3600
Wire Wire Line
	10100 3600 10100 3900
Wire Wire Line
	9600 3900 9600 3500
Wire Wire Line
	9600 3500 7850 3500
Wire Wire Line
	7750 3400 9100 3400
Wire Wire Line
	9100 3400 9100 3900
Wire Wire Line
	8600 3900 8600 3300
Wire Wire Line
	8600 3300 7650 3300
Wire Wire Line
	9100 5600 9100 5300
Wire Wire Line
	9000 5500 9000 5300
Wire Wire Line
	7950 5400 7950 3600
Wire Wire Line
	7850 3500 7850 5300
Wire Wire Line
	7750 5200 7750 3400
Wire Wire Line
	7650 3300 7650 5100
$Comp
L POT RV1
U 1 1 58A9F3AA
P 3775 7000
F 0 "RV1" H 3775 6900 50  0000 C CNN
F 1 "POT" H 3775 7000 50  0000 C CNN
F 2 "" H 3775 7000 50  0000 C CNN
F 3 "" H 3775 7000 50  0000 C CNN
	1    3775 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 6000 3775 6850
Wire Wire Line
	5025 6675 4025 6675
Wire Wire Line
	4025 6675 4025 7000
Wire Wire Line
	4775 4675 3525 4675
Wire Wire Line
	3525 4675 3525 7000
Connection ~ 4775 4925
Connection ~ 4775 4675
Connection ~ 4900 4925
$Comp
L PWR_FLAG #FLG05
U 1 1 58A9F6E2
P 4775 4675
F 0 "#FLG05" H 4775 4770 50  0001 C CNN
F 1 "PWR_FLAG" H 4775 4855 50  0000 C CNN
F 2 "" H 4775 4675 50  0000 C CNN
F 3 "" H 4775 4675 50  0000 C CNN
	1    4775 4675
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 58A9F70A
P 4900 4925
F 0 "#FLG06" H 4900 5020 50  0001 C CNN
F 1 "PWR_FLAG" H 4900 5105 50  0000 C CNN
F 2 "" H 4900 4925 50  0000 C CNN
F 3 "" H 4900 4925 50  0000 C CNN
	1    4900 4925
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 58A9F732
P 6200 6675
F 0 "#FLG07" H 6200 6770 50  0001 C CNN
F 1 "PWR_FLAG" H 6200 6855 50  0000 C CNN
F 2 "" H 6200 6675 50  0000 C CNN
F 3 "" H 6200 6675 50  0000 C CNN
	1    6200 6675
	0    1    1    0   
$EndComp
$EndSCHEMATC
