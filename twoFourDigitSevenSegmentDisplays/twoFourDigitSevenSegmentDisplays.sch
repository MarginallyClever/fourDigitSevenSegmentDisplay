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
LIBS:twoFourDigitSevenSegmentDisplays-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Two four digit seven segment displays on arduino"
Date "2017-02-19"
Rev "1"
Comp "Marginally Clever Robots"
Comment1 "Dan Royer (dan@marginallyclever.com)"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_8 P1
U 1 1 5517C2C1
P 2625 3425
F 0 "P1" V 2575 3425 60  0000 C CNN
F 1 "Power" V 2675 3425 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" H 2625 3425 60  0001 C CNN
F 3 "" H 2625 3425 60  0000 C CNN
	1    2625 3425
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 5517C323
P 2625 4225
F 0 "P2" V 2575 4225 60  0000 C CNN
F 1 "Analog" V 2675 4225 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" H 2625 4225 60  0001 C CNN
F 3 "" H 2625 4225 60  0000 C CNN
	1    2625 4225
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P4
U 1 1 5517C366
P 2950 4125
F 0 "P4" V 2900 4125 60  0000 C CNN
F 1 "Digital" V 3000 4125 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" H 2950 4125 60  0001 C CNN
F 3 "" H 2950 4125 60  0000 C CNN
	1    2950 4125
	-1   0    0    -1  
$EndComp
$Comp
L CONN_10 P3
U 1 1 5517C46C
P 2950 3125
F 0 "P3" V 2900 3125 60  0000 C CNN
F 1 "Digital" V 3000 3125 60  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" H 2950 3125 60  0001 C CNN
F 3 "" H 2950 3125 60  0000 C CNN
	1    2950 3125
	-1   0    0    -1  
$EndComp
Text Label 1525 3275 0    60   ~ 0
Reset
Text Label 1825 2900 1    60   ~ 0
Vin
Text Label 2200 2900 1    60   ~ 0
IOREF
Text Label 1525 3975 0    60   ~ 0
A0
Text Label 1525 4075 0    60   ~ 0
A1
Text Label 1525 4175 0    60   ~ 0
A2
Text Label 1525 4275 0    60   ~ 0
A3
Text Label 1525 4375 0    60   ~ 0
A4(SDA)
Text Label 1525 4475 0    60   ~ 0
A5(SCL)
Text Label 3450 4475 0    60   ~ 0
0(Rx)
Text Label 3450 4275 0    60   ~ 0
2
Text Label 3450 4375 0    60   ~ 0
1(Tx)
Text Label 3450 4175 0    60   ~ 0
3(**)
Text Label 3450 4075 0    60   ~ 0
4
Text Label 3450 3975 0    60   ~ 0
5(**)
Text Label 3450 3875 0    60   ~ 0
6(**)
Text Label 3450 3775 0    60   ~ 0
7
Text Label 3450 3575 0    60   ~ 0
8
Text Label 3450 3475 0    60   ~ 0
9(**)
Text Label 3450 3375 0    60   ~ 0
10(**/SS)
Text Label 3450 3275 0    60   ~ 0
11(**/MOSI)
Text Label 3450 3175 0    60   ~ 0
12(MISO)
Text Label 3450 3075 0    60   ~ 0
13(SCK)
Text Label 3525 2875 0    60   ~ 0
AREF
$Comp
L GND #PWR01
U 1 1 5517CC27
P 3375 4650
F 0 "#PWR01" H 3375 4650 30  0001 C CNN
F 1 "GND" H 3375 4580 30  0001 C CNN
F 2 "" H 3375 4650 60  0000 C CNN
F 3 "" H 3375 4650 60  0000 C CNN
	1    3375 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5517CC7B
P 2200 4650
F 0 "#PWR02" H 2200 4650 30  0001 C CNN
F 1 "GND" H 2200 4580 30  0001 C CNN
F 2 "" H 2200 4650 60  0000 C CNN
F 3 "" H 2200 4650 60  0000 C CNN
	1    2200 4650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5517CCC2
P 1950 2900
F 0 "#PWR03" H 1950 2990 20  0001 C CNN
F 1 "+5V" H 1950 2990 30  0000 C CNN
F 2 "" H 1950 2900 60  0000 C CNN
F 3 "" H 1950 2900 60  0000 C CNN
	1    1950 2900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 5517CCDA
P 2075 2900
F 0 "#PWR04" H 2075 2860 30  0001 C CNN
F 1 "+3.3V" H 2075 3010 30  0000 C CNN
F 2 "" H 2075 2900 60  0000 C CNN
F 3 "" H 2075 2900 60  0000 C CNN
	1    2075 2900
	1    0    0    -1  
$EndComp
NoConn ~ 2275 3075
Text Label 3450 2775 0    60   ~ 0
A4(SDA)2
Text Label 3450 2675 0    60   ~ 0
A5(SCL)2
$Comp
L CONN_1 P5
U 1 1 551BBC06
P 3775 2200
F 0 "P5" H 3855 2200 40  0000 L CNN
F 1 "CONN_1" H 3775 2255 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 3775 2200 60  0001 C CNN
F 3 "" H 3775 2200 60  0000 C CNN
	1    3775 2200
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P6
U 1 1 551BBD10
P 3850 2200
F 0 "P6" H 3930 2200 40  0000 L CNN
F 1 "CONN_1" H 3850 2255 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 3850 2200 60  0001 C CNN
F 3 "" H 3850 2200 60  0000 C CNN
	1    3850 2200
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P7
U 1 1 551BBD30
P 3925 2200
F 0 "P7" H 4005 2200 40  0000 L CNN
F 1 "CONN_1" H 3925 2255 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 3925 2200 60  0001 C CNN
F 3 "" H 3925 2200 60  0000 C CNN
	1    3925 2200
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 P8
U 1 1 551BBD52
P 4000 2200
F 0 "P8" H 4080 2200 40  0000 L CNN
F 1 "CONN_1" H 4000 2255 30  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 4000 2200 60  0001 C CNN
F 3 "" H 4000 2200 60  0000 C CNN
	1    4000 2200
	0    -1   -1   0   
$EndComp
NoConn ~ 3775 2350
NoConn ~ 3850 2350
NoConn ~ 3925 2350
NoConn ~ 4000 2350
$Comp
L PWR_FLAG #FLG05
U 1 1 58A9FDEA
P 1950 2275
F 0 "#FLG05" H 1950 2370 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 2455 50  0000 C CNN
F 2 "" H 1950 2275 50  0000 C CNN
F 3 "" H 1950 2275 50  0000 C CNN
	1    1950 2275
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 58A9FF36
P 2075 2500
F 0 "#FLG06" H 2075 2595 50  0001 C CNN
F 1 "PWR_FLAG" H 2075 2680 50  0000 C CNN
F 2 "" H 2075 2500 50  0000 C CNN
F 3 "" H 2075 2500 50  0000 C CNN
	1    2075 2500
	0    1    1    0   
$EndComp
$Comp
L PWR_FLAG #FLG07
U 1 1 58A9FF5A
P 2750 4650
F 0 "#FLG07" H 2750 4745 50  0001 C CNN
F 1 "PWR_FLAG" H 2750 4830 50  0000 C CNN
F 2 "" H 2750 4650 50  0000 C CNN
F 3 "" H 2750 4650 50  0000 C CNN
	1    2750 4650
	-1   0    0    1   
$EndComp
NoConn ~ 4025 2675
NoConn ~ 4025 2775
NoConn ~ 4025 2875
NoConn ~ 4025 3075
NoConn ~ 4025 3175
NoConn ~ 4025 3275
NoConn ~ 4025 3375
NoConn ~ 4025 3475
NoConn ~ 4025 3575
NoConn ~ 4025 3775
NoConn ~ 4025 3875
NoConn ~ 4025 4475
NoConn ~ 4025 4375
NoConn ~ 4025 3975
NoConn ~ 1500 4075
NoConn ~ 1500 4175
NoConn ~ 1500 4275
NoConn ~ 1500 4375
NoConn ~ 1500 4475
$Comp
L CA56-12 AFF1
U 1 1 58AA01C8
P 7700 3825
F 0 "AFF1" H 7700 4625 50  0000 C CNN
F 1 "CA56-12" H 7700 4525 50  0000 C CNN
F 2 "Displays_7-Segment:Cx56-12" H 7200 3825 50  0001 C CNN
F 3 "" H 7200 3825 50  0000 C CNN
	1    7700 3825
	1    0    0    -1  
$EndComp
$Comp
L CA56-12 AFF2
U 1 1 58AA02D3
P 9900 3825
F 0 "AFF2" H 9900 4625 50  0000 C CNN
F 1 "CA56-12" H 9900 4525 50  0000 C CNN
F 2 "Displays_7-Segment:Cx56-12" H 9400 3825 50  0001 C CNN
F 3 "" H 9400 3825 50  0000 C CNN
	1    9900 3825
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U1
U 1 1 58AA055C
P 5500 2375
F 0 "U1" H 5650 2975 50  0000 C CNN
F 1 "74HC595" H 5500 1775 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 5500 2375 50  0001 C CNN
F 3 "" H 5500 2375 50  0000 C CNN
	1    5500 2375
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 U2
U 1 1 58AA064D
P 5500 5350
F 0 "U2" H 5650 5950 50  0000 C CNN
F 1 "74HC595" H 5500 4750 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 5500 5350 50  0001 C CNN
F 3 "" H 5500 5350 50  0000 C CNN
	1    5500 5350
	1    0    0    -1  
$EndComp
NoConn ~ 6200 2825
Wire Wire Line
	1350 3975 2275 3975
Wire Wire Line
	1500 4075 2275 4075
Wire Wire Line
	1500 4175 2275 4175
Wire Wire Line
	1500 4275 2275 4275
Wire Wire Line
	1500 4375 2275 4375
Wire Wire Line
	1500 4475 2275 4475
Wire Wire Line
	3300 3575 4025 3575
Wire Wire Line
	3300 3475 4025 3475
Wire Wire Line
	3300 3375 4025 3375
Wire Wire Line
	3300 3275 4025 3275
Wire Wire Line
	3300 3175 4025 3175
Wire Wire Line
	3300 3075 4025 3075
Wire Wire Line
	3300 2875 4025 2875
Wire Wire Line
	3300 2775 4025 2775
Wire Wire Line
	3300 2675 4025 2675
Wire Wire Line
	2075 3375 2275 3375
Wire Wire Line
	1950 3475 2275 3475
Wire Wire Line
	2200 3575 2200 4650
Wire Wire Line
	1500 3275 2275 3275
Wire Wire Line
	3375 4650 3375 2975
Wire Wire Line
	3375 2975 3300 2975
Wire Wire Line
	3300 3975 4025 3975
Wire Wire Line
	3300 3875 4025 3875
Wire Wire Line
	3300 3775 4025 3775
Wire Wire Line
	3300 4275 4525 4275
Wire Wire Line
	4250 4075 3300 4075
Wire Wire Line
	3300 4475 4025 4475
Wire Wire Line
	3300 4375 4025 4375
Wire Wire Line
	2075 2500 2075 3375
Wire Wire Line
	2200 2900 2200 3175
Wire Wire Line
	2200 3175 2275 3175
Wire Wire Line
	1950 2275 1950 3475
Wire Wire Line
	1825 2900 1825 3775
Wire Wire Line
	1825 3775 2275 3775
Wire Wire Line
	2200 3575 2275 3575
Wire Wire Line
	2275 3675 2200 3675
Connection ~ 2200 3675
Wire Wire Line
	6200 4900 9600 4900
Wire Wire Line
	7400 4900 7400 4525
Wire Wire Line
	6200 5000 9700 5000
Wire Wire Line
	7500 5000 7500 4525
Wire Wire Line
	7600 4525 7600 5100
Wire Wire Line
	6200 5100 9800 5100
Wire Wire Line
	6200 5200 9900 5200
Wire Wire Line
	7700 5200 7700 4525
Wire Wire Line
	7800 4525 7800 5300
Wire Wire Line
	6200 5300 10000 5300
Wire Wire Line
	6200 5400 10100 5400
Wire Wire Line
	7900 5400 7900 4525
Wire Wire Line
	8000 4525 8000 5500
Wire Wire Line
	6200 5500 10200 5500
Wire Wire Line
	6200 5600 10300 5600
Wire Wire Line
	8100 5600 8100 4525
Wire Wire Line
	9600 4900 9600 4525
Connection ~ 7400 4900
Wire Wire Line
	9700 5000 9700 4525
Connection ~ 7500 5000
Wire Wire Line
	9800 5100 9800 4525
Connection ~ 7600 5100
Wire Wire Line
	9900 5200 9900 4525
Connection ~ 7700 5200
Wire Wire Line
	10000 5300 10000 4525
Connection ~ 7800 5300
Wire Wire Line
	10100 5400 10100 4525
Connection ~ 7900 5400
Wire Wire Line
	10200 5500 10200 4525
Connection ~ 8000 5500
Wire Wire Line
	10300 5600 10300 4525
Connection ~ 8100 5600
Wire Wire Line
	6200 5800 6200 3450
Wire Wire Line
	6200 3450 4525 3450
Wire Wire Line
	4525 3450 4525 1925
Wire Wire Line
	4525 1925 4800 1925
Wire Wire Line
	6200 1925 10700 1925
Wire Wire Line
	10700 1925 10700 3125
Wire Wire Line
	6200 2025 10200 2025
Wire Wire Line
	10200 2025 10200 3125
Wire Wire Line
	9700 3125 9700 2125
Wire Wire Line
	9700 2125 6200 2125
Wire Wire Line
	6200 2225 9200 2225
Wire Wire Line
	9200 2225 9200 3125
Wire Wire Line
	6200 2325 8500 2325
Wire Wire Line
	8500 2325 8500 3125
Wire Wire Line
	8000 3125 8000 2425
Wire Wire Line
	8000 2425 6200 2425
Wire Wire Line
	6200 2525 7500 2525
Wire Wire Line
	7500 2525 7500 3125
Wire Wire Line
	7000 3125 7000 2625
Wire Wire Line
	7000 2625 6200 2625
Wire Wire Line
	4525 4900 4800 4900
Wire Wire Line
	4250 2125 4800 2125
Wire Wire Line
	4250 5100 4800 5100
Wire Wire Line
	4800 2425 4375 2425
Wire Wire Line
	4250 2125 4250 5100
Connection ~ 4250 4075
Wire Wire Line
	4525 4275 4525 4900
Wire Wire Line
	3300 4175 4375 4175
Wire Wire Line
	4375 2425 4375 5400
Wire Wire Line
	4375 5400 4800 5400
Connection ~ 4375 4175
$Comp
L +5V #PWR08
U 1 1 58AA37B4
P 4800 2225
F 0 "#PWR08" H 4800 2075 50  0001 C CNN
F 1 "+5V" H 4800 2365 50  0000 C CNN
F 2 "" H 4800 2225 50  0000 C CNN
F 3 "" H 4800 2225 50  0000 C CNN
	1    4800 2225
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR09
U 1 1 58AA37E0
P 4800 5200
F 0 "#PWR09" H 4800 5050 50  0001 C CNN
F 1 "+5V" H 4800 5340 50  0000 C CNN
F 2 "" H 4800 5200 50  0000 C CNN
F 3 "" H 4800 5200 50  0000 C CNN
	1    4800 5200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR010
U 1 1 58AA3938
P 4800 5500
F 0 "#PWR010" H 4800 5250 50  0001 C CNN
F 1 "GND" H 4800 5350 50  0000 C CNN
F 2 "" H 4800 5500 50  0000 C CNN
F 3 "" H 4800 5500 50  0000 C CNN
	1    4800 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 58AA3964
P 4800 2525
F 0 "#PWR011" H 4800 2275 50  0001 C CNN
F 1 "GND" H 4800 2375 50  0000 C CNN
F 2 "" H 4800 2525 50  0000 C CNN
F 3 "" H 4800 2525 50  0000 C CNN
	1    4800 2525
	1    0    0    -1  
$EndComp
Connection ~ 2075 2900
NoConn ~ 1825 2900
NoConn ~ 2200 2900
NoConn ~ 1500 3275
Wire Wire Line
	1600 4650 3375 4650
Connection ~ 2750 4650
$Comp
L +5V #PWR012
U 1 1 58AA4762
P 5200 4800
F 0 "#PWR012" H 5200 4650 50  0001 C CNN
F 1 "+5V" H 5200 4940 50  0000 C CNN
F 2 "" H 5200 4800 50  0000 C CNN
F 3 "" H 5200 4800 50  0000 C CNN
	1    5200 4800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 58AA4836
P 5200 1825
F 0 "#PWR013" H 5200 1675 50  0001 C CNN
F 1 "+5V" H 5200 1965 50  0000 C CNN
F 2 "" H 5200 1825 50  0000 C CNN
F 3 "" H 5200 1825 50  0000 C CNN
	1    5200 1825
	1    0    0    -1  
$EndComp
Connection ~ 1950 2900
$Comp
L POT RV1
U 1 1 58AA6461
P 1350 5050
F 0 "RV1" H 1350 4950 50  0000 C CNN
F 1 "POT" H 1350 5050 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Piher_T16H_Single_Vertical" H 1350 5050 50  0001 C CNN
F 3 "" H 1350 5050 50  0000 C CNN
	1    1350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4650 1600 5050
Connection ~ 2200 4650
Wire Wire Line
	1350 3975 1350 4900
Wire Wire Line
	1100 5050 1100 2300
Wire Wire Line
	1100 2300 1950 2300
Connection ~ 1950 2300
$Comp
L GND #PWR?
U 1 1 58AE202B
P 5200 2925
F 0 "#PWR?" H 5200 2675 50  0001 C CNN
F 1 "GND" H 5200 2775 50  0000 C CNN
F 2 "" H 5200 2925 50  0000 C CNN
F 3 "" H 5200 2925 50  0000 C CNN
	1    5200 2925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58AE2059
P 5200 5900
F 0 "#PWR?" H 5200 5650 50  0001 C CNN
F 1 "GND" H 5200 5750 50  0000 C CNN
F 2 "" H 5200 5900 50  0000 C CNN
F 3 "" H 5200 5900 50  0000 C CNN
	1    5200 5900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
