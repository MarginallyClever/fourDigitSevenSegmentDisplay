// Two four digit seven segment display connected to shift registers connected to Arduino
// Dan Royer (dan@marginallyclever.com) 2017-02-17

//---------------------------------------------------
// CONSTANTS
//---------------------------------------------------

// All these details are according to the seven segment data sheet

#define NUM_ANODES   8
#define NUM_CATHODES 8
#define NUM_PINS     16

// each anode is a differenct segment within a single digit
// the order of the wires at the shift register has been arranged to match
// the order in the seven segment data sheet.
//
// shift register pin - seven segment pin - Anode or Cathode
// a0 - 11 - A
// a1 -  7 - A
// a2 -  4 - A
// a3 -  2 - A
// a4 -  1 - A
// a5 - 10 - A
// a6 -  5 - A
// a7 -  3 - A
// b0 - L1 - C
// b1 - L2 - C
// b2 - L3 - C
// b3 - L4 - C
// b4 - R1 - C
// b5 - R2 - C
// b6 - R3 - C
// b7 - R4 - C
const int   anodes[] = { 0,1,2,3,4,5,6,7 };
// each cathodes is a separate digit on the display
const int cathodes[] = { 8,9,10,11,12,13,14,15 };

// which segments should be lit for each number?
//  AAA
// F   B
//  GGG
// E   C
//  DDD  H
// 1 = on (HIGH)
// 0 = off (LOW)
//                    A B C D E F G H
const char zero [] = {1,1,1,1,1,1,0,0};
const char one  [] = {0,1,1,0,0,0,0,0};
const char two  [] = {1,1,0,1,1,0,1,0};
const char three[] = {1,1,1,1,0,0,1,0};
const char four [] = {0,1,1,0,0,1,1,0};
const char five [] = {1,0,1,1,0,1,1,0};
const char six  [] = {1,0,1,1,1,1,1,0};
const char seven[] = {1,1,1,0,0,0,0,0};
const char eight[] = {1,1,1,1,1,1,1,0};
const char nine [] = {1,1,1,1,0,1,1,0};
const char none [] = {0,0,0,0,0,0,0,0};

const char *numbers[] = { zero,one,two,three,four,five,six,seven,eight,nine,none };

#define NONE   10   // what number is none?
#define WAIT   100  // animation speed.  personal taste.  smaller=faster.


// shift register setup

#define SER 2  // the serial data pin (14)
#define LAT 3  // the RCLK pin (12)
#define CLK 4  // the SRCLK pin (11)


//---------------------------------------------------
// GLOBALS
//---------------------------------------------------

// Remember what we're doing wtih every shift register pin
char shiftStates[NUM_PINS];


//---------------------------------------------------
// METHODS
//---------------------------------------------------


void setup() {
  pinMode(SER, OUTPUT);
  pinMode(LAT, OUTPUT);
  pinMode(CLK, OUTPUT);

  // memory state is unknown at program start, make it certainly zero.
  int i;
  for(i=0;i<NUM_PINS;++i) {
    shiftStates[i] = 0;
  }

  Serial.begin(57600);

  testShiftRegisters();
  testSegments();
  testDigits();
  testNumbers();
  //countDown();  // takes a looooong time
}


void loop() {
  testPotentiometer();
}


void countDown() {
  float biggestNumber = 100000000; // 8 positions
  long i;
  for(i=biggestNumber;i>=0;--i) {
    long t = millis();
    do {
      displayNumber(i);
    } while(millis()-t < 2);
  }
}


// this uses persistence of vision to display several single numbers at once.
void displayNumber(long i) {
  int j=0;

  //Serial.print(i);
  //Serial.print('\t');

  for(j=0;j<NUM_CATHODES;++j) 
  {
    int x = i%10;  // x = remainder of i / 10.
    if(i==0 && j>0) x=NONE;  // only display 0 in the digit on the right.
    displayOneNumber(x);
    setOneDigit(j);
    copyMemoryToShiftRegister();
    i/=10;
  }
}


// show all numbers in sequence, 
void testNumbers() {
  int i,j;

  for(i=0;i<NUM_CATHODES;++i) {
    setOneDigit(i);
    
    for(j=0;j<10;++j) {
      displayOneNumber(j);
      copyMemoryToShiftRegister();
      delay(WAIT);
    }
  }

  displayOneNumber(NONE);
  copyMemoryToShiftRegister();
  delay(WAIT);
}


// display a single number in any currently selected digits.
void displayOneNumber(int n) {
  const char *thisNumber = numbers[n];

  int i;
  for(i=0;i<NUM_ANODES;++i) {
    int state = (thisNumber[i]==1)? HIGH:LOW;
    setAnode(i,state);
  }
}


// light all the segments in each digit one at a time.
void testDigits() {
  int i;
  // turn on all segments
  for(i=0;i<NUM_ANODES;++i) {
    setAnode(i,HIGH);
  }
  
  // change digits
  for(i=0;i<NUM_CATHODES;++i) {
    setOneDigit(i);
    copyMemoryToShiftRegister();
    delay(WAIT);
  }
}


void setNoDigits() {
  int j;
  for(j=0;j<NUM_CATHODES;++j) {
    setCathode(j,HIGH);
  }
}


// select only the i-th place.  0 is first place (right-most)
void setOneDigit(int i) {
  int j;
  for(j=0;j<NUM_CATHODES;++j) {
    // make a cathode LOW to show that digit.
    int state = (i==j) ? LOW:HIGH;
    setCathode(j,state);
  }
}


// test that all segments light up.
void testSegments() {
  int i,j;
  for(i=0;i<NUM_CATHODES;++i) {
    setCathode(i,LOW);
  }

  for(i=0;i<NUM_ANODES;++i) {
    for(j=0;j<NUM_ANODES;++j) {
      // make an anode HIGH to show that anode/segment.
      int state = (i==j) ? HIGH:LOW;
      setAnode(j, state );
    }
    copyMemoryToShiftRegister();
    delay(WAIT);
  }
}


// send local memory state to all 16 shift register pins
// then display it
void copyMemoryToShiftRegister() {
  int i;
  for(i=0;i<NUM_PINS;++i) {
    // set data
    digitalWrite(SER,shiftStates[NUM_PINS-1-i]);
    //Serial.print(shiftStates[NUM_PINS-1-i]?'1':'0');
    // send
    digitalWrite(CLK,HIGH);
    digitalWrite(CLK,LOW);
  }
    // show results
    digitalWrite(LAT,HIGH);
    digitalWrite(LAT,LOW);
  //Serial.println();
}


// this only changes local memory
void setAnode(int i,int state) {
  shiftStates[anodes[i]] = state;
}


// this only changes local memory
void setCathode(int i,int state) {
  shiftStates[cathodes[i]] = state;
}


void testShiftRegisters() {
  digitalWrite(SER,LOW);
  int i;
  for(i=0;i<NUM_PINS;++i) {
    if(i==8) digitalWrite(SER,HIGH);
    digitalWrite(CLK,HIGH);
    digitalWrite(CLK,LOW);
    // show results
    digitalWrite(LAT,HIGH);
    digitalWrite(LAT,LOW);
  }
}


void testPotentiometer() {
  long x = analogRead(A0);
  displayNumber(x*x);
}

