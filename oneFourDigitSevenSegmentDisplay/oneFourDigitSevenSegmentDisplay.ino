// Four digit seven segment display
// Dan Royer (dan@marginallyclever.com) 2017-02-17

//---------------------------------------------------
// CONSTANTS
//---------------------------------------------------

// All these details are according to the seven segment data sheet

#define NUM_ANODES   8
#define NUM_CATHODES 4
#define NUM_PINS     12

// each anode is a differenct segment within a single digit
const int   anodes[] = { 11,7,4,2,1,10,5,3 };
// each cathodes is a separate digit on the display
const int cathodes[] = { 12,9,8,6 };

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

// the order of pins on the Arduino might be different from
// the order of pins on the display.  This translates between the two.
const int translatePins[] = { 
  // datasheet index starts at 1, so this is filler.
  0,  
  // sequence of pins starts in the bottom left
  7, 6, 5, 4, 3, 2, 
  8, 9,10,11,12,13,
};


#define NONE   10   // what number is none?
#define WAIT   100  // animation speed.  personal taste.  smaller=faster.


//---------------------------------------------------
// METHODS
//---------------------------------------------------


void setup() {
  int i;
  // Set every pin in the translate list to output.
  for(i=0;i<NUM_PINS;++i) {
    pinMode(translatePins[i+1],OUTPUT);
  }
  
  testSegments();
  testDigits();
  testNumbers();
  //countDown();
}


void loop() {
  displayNumber(analogRead(A0));
}


void countDown() {
  int i;
  int w;
  for(i=10000;i>=0;--i) {
    w = 50 - 49.0f * (float)i / 10000.0f;
    long t = millis();
    do {
      displayNumber(i);
    } while(millis()-t < w);
  }
}


// this uses persistence of vision to display several single numbers at once.
void displayNumber(int i) {
  int j;

  for(j=0;j<NUM_CATHODES;++j) {
    int x = i%10;  // x = remainder of i / 10.
    if(i==0 && j>0) x=NONE;
    setNoDigits();
    displayOneNumber(x);
    setOneDigit(j);
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
      delay(WAIT);
    }
  }

  displayOneNumber(NONE);
  delay(WAIT);
}


// display a single number in any currently selected digits.
void displayOneNumber(int n) {
  const char *thisNumber = numbers[n];

  int i;
  for(i=0;i<NUM_ANODES;++i) {
    int state = (thisNumber[i]==1)? HIGH:LOW;
    digitalWrite(getAnode(i),state);
  }
}


// light all the segments in each digit one at a time.
void testDigits() {
  int i;
  // turn on all segments
  for(i=0;i<NUM_ANODES;++i) {
    digitalWrite(getAnode(i),HIGH);
  }
  
  // change digits
  for(i=0;i<NUM_CATHODES;++i) {
    setOneDigit(i);
    delay(WAIT);
  }
}


void setNoDigits() {
  int j;
  for(j=0;j<NUM_CATHODES;++j) {
    digitalWrite(getCathode(j),HIGH);
  }
}


// select only the i-th place.  0 is first place (right-most)
void setOneDigit(int i) {
  i = NUM_CATHODES-1-i;

  int j;
  for(j=0;j<NUM_CATHODES;++j) {
    // make a cathode LOW to show that digit.
    int state = (i==j) ? LOW:HIGH;
    digitalWrite(getCathode(j),state);
  }
}


// test that all segments light up.
void testSegments() {
  int i,j;
  for(i=0;i<NUM_CATHODES;++i) {
    digitalWrite(getCathode(i),LOW);
  }

  for(i=0;i<NUM_ANODES;++i) {
    for(j=0;j<NUM_ANODES;++j) {
      // make an anode HIGH to show that anode/segment.
      int state = (i==j) ? HIGH:LOW;
      digitalWrite( getAnode(j), state );
    }
    delay(WAIT);
  }
}


int getAnode(int i) {
  return translatePins[anodes[i]];
}


int getCathode(int i) {
  return translatePins[cathodes[i]];
}

