// MCP23017 Relay Matrix Driver Test
//
// Target Hardware:  Uno, MCP23017 GPIO Expanders
//
// Arduino to MCP23017 Connections:
// Uno Pin            MCP23017 Pin
//   SCL                  SCK
//   SDA                  SDA
//   GND                  VSS
//    5V                  VDD
//
// Arduino library pin numbers to use for each MCP23017 input/output pin
// mcp23017 pin    pin name       library pin #
//     21            GPA0             0
//     22            GPA1             1
//     23            GPA2             2
//     24            GPA3             3
//     25            GPA4             4
//     26            GPA5             5
//     27            GPA6             6
//     28            GPA7             7
//      1            GPB0             8
//      2            GPB1             9
//      3            GPB2             10
//      4            GPB3             11
//      5            GPB4             12
//      6            GPB5             13
//      7            GPB6             14
//      8            GPB7             15
//
// Tested with Arduino IDE 1.8.13
// Gadget Reboot
// https://www.youtube.com/gadgetreboot

#include <Adafruit_MCP23X17.h>

// mcp23017 addresses
#define addr1 0x20
#define addr2 0x21
#define addr3 0x22
#define addr4 0x23

// Relay Matrix pcb driver signals to MCP23017 GPIO mapping
// x1 input to y output relays
#define x1_reset_A    10  // GPB2    starting at mcp23017 addr 0x20
#define x1_set_A      11  // GPB3
#define x1_reset_B    12  // GPB4
#define x1_set_B      13  // GPB5
#define y1_2_reset    14  // GPB6
#define y1_2_set      15  // GPB7
#define y3_4_reset    0   // GPA0
#define y3_4_set      1   // GPA1
#define y5_6_reset    2   // GPA2
#define y5_6_set      3   // GPA3

// x2 input to y output relays
#define x2_reset_A    4   // GPA4
#define x2_set_A      5   // GPA5
#define x2_reset_B    6   // GPA6
#define x2_set_B      7   // GPA7
#define y7_8_reset    8   // GPB0    starting at mcp23017 addr 0x21
#define y7_8_set      9   // GPB1
#define y9_10_reset   10  // GPB2
#define y9_10_set     11  // GPB3
#define y11_12_reset  12  // GPB4
#define y11_12_set    13  // GPB5

// x3 input to y output relays
#define x3_reset_A    14  // GPB6
#define x3_set_A      15  // GPB7
#define x3_reset_B    0   // GPA0
#define x3_set_B      1   // GPA1
#define y13_14_reset  2   // GPA2    
#define y13_14_set    3   // GPA3
#define y15_16_reset  4   // GPA4
#define y15_16_set    5   // GPA5
#define y17_18_reset  6   // GPA6
#define y17_18_set    7   // GPA7

// x4 input to y output relays
#define x4_reset_A    8   // GPB0    starting at mcp23017 addr 0x22
#define x4_set_A      9   // GPB1
#define x4_reset_B    10  // GPB2
#define x4_set_B      11  // GPB3
#define y19_20_reset  12  // GPB4    
#define y19_20_set    13  // GPB5
#define y21_22_reset  14  // GPB6
#define y21_22_set    15  // GPB7
#define y23_24_reset  0   // GPA0
#define y23_24_set    1   // GPA1

// x5 input to y output relays
#define x5_reset_A    2   // GPA2    
#define x5_set_A      3   // GPA3
#define x5_reset_B    4   // GPA4
#define x5_set_B      5   // GPA5
#define y25_26_reset  6   // GPA6    
#define y25_26_set    7   // GPA7
#define y27_28_reset  8   // GPB0    starting at mcp23017 addr 0x23
#define y27_28_set    9   // GPB1
#define y29_30_reset  10  // GPB2
#define y29_30_set    11  // GPB3

// x6 input to y output relays
#define x6_reset_A    12  // GPB4    
#define x6_set_A      13  // GPB5
#define x6_reset_B    14  // GPB6
#define x6_set_B      15  // GPB7
#define y31_32_reset  0   // GPA0    
#define y31_32_set    1   // GPA1
#define y33_34_reset  2   // GPA2     
#define y33_34_set    3   // GPA3
#define y35_36_reset  4   // GPA4
#define y35_36_set    5   // GPA5


// macros to turn relay channels on/off
#define x1_reset_A_on      mcp1.digitalWrite(x1_reset_A, 1)
#define x1_reset_A_off     mcp1.digitalWrite(x1_reset_A, 0)

#define x1_set_A_on        mcp1.digitalWrite(x1_set_A, 1)
#define x1_set_A_off       mcp1.digitalWrite(x1_set_A, 0)

#define x1_reset_B_on      mcp1.digitalWrite(x1_reset_B, 1)
#define x1_reset_B_off     mcp1.digitalWrite(x1_reset_B, 0)

#define x1_set_B_on        mcp1.digitalWrite(x1_set_B, 1)
#define x1_set_B_off       mcp1.digitalWrite(x1_set_B, 0)

#define y1_2_reset_on      mcp1.digitalWrite(y1_2_reset, 1)
#define y1_2_reset_off     mcp1.digitalWrite(y1_2_reset, 0)

#define y1_2_set_on        mcp1.digitalWrite(y1_2_set, 1)
#define y1_2_set_off       mcp1.digitalWrite(y1_2_set, 0)

#define y3_4_reset_on      mcp1.digitalWrite(y3_4_reset, 1)
#define y3_4_reset_off     mcp1.digitalWrite(y3_4_reset, 0)

#define y3_4_set_on        mcp1.digitalWrite(y3_4_set, 1)
#define y3_4_set_off       mcp1.digitalWrite(y3_4_set, 0)

#define y5_6_reset_on      mcp1.digitalWrite(y5_6_reset, 1)
#define y5_6_reset_off     mcp1.digitalWrite(y5_6_reset, 0)

#define y5_6_set_on        mcp1.digitalWrite(y5_6_set, 1)
#define y5_6_set_off       mcp1.digitalWrite(y5_6_set, 0)

#define x2_reset_A_on      mcp1.digitalWrite(x2_reset_A, 1)
#define x2_reset_A_off     mcp1.digitalWrite(x2_reset_A, 0)

#define x2_set_A_on        mcp1.digitalWrite(x2_set_A, 1)
#define x2_set_A_off       mcp1.digitalWrite(x2_set_A, 0)

#define x2_reset_B_on      mcp1.digitalWrite(x2_reset_B, 1)
#define x2_reset_B_off     mcp1.digitalWrite(x2_reset_B, 0)

#define x2_set_B_on        mcp1.digitalWrite(x2_set_B, 1)
#define x2_set_B_off       mcp1.digitalWrite(x2_set_B, 0)

#define y7_8_reset_on      mcp2.digitalWrite(y7_8_reset, 1)
#define y7_8_reset_off     mcp2.digitalWrite(y7_8_reset, 0)

#define y7_8_set_on        mcp2.digitalWrite(y7_8_set, 1)
#define y7_8_set_off       mcp2.digitalWrite(y7_8_set, 0)

#define y9_10_reset_on     mcp2.digitalWrite(y9_10_reset, 1)
#define y9_10_reset_off    mcp2.digitalWrite(y9_10_reset, 0)

#define y9_10_set_on       mcp2.digitalWrite(y9_10_set, 1)
#define y9_10_set_off      mcp2.digitalWrite(y9_10_set, 0)

#define y11_12_reset_on    mcp2.digitalWrite(y11_12_reset, 1)
#define y11_12_reset_off   mcp2.digitalWrite(y11_12_reset, 0)

#define y11_12_set_on      mcp2.digitalWrite(y11_12_set, 1)
#define y11_12_set_off     mcp2.digitalWrite(y11_12_set, 0)

#define x3_reset_A_on      mcp1.digitalWrite(x3_reset_A, 1)
#define x3_reset_A_off     mcp1.digitalWrite(x3_reset_A, 0)

#define x3_set_A_on        mcp1.digitalWrite(x3_set_A, 1)
#define x3_set_A_off       mcp1.digitalWrite(x3_set_A, 0)

#define x3_reset_B_on      mcp1.digitalWrite(x3_reset_B, 1)
#define x3_reset_B_off     mcp1.digitalWrite(x3_reset_B, 0)

#define x3_set_B_on        mcp1.digitalWrite(x3_set_B, 1)
#define x3_set_B_off       mcp1.digitalWrite(x3_set_B, 0)

#define y13_14_reset_on    mcp2.digitalWrite(y13_14_reset, 1)
#define y13_14_reset_off   mcp2.digitalWrite(y13_14_reset, 0)

#define y13_14_set_on      mcp2.digitalWrite(y13_14_set, 1)
#define y13_14_set_off     mcp2.digitalWrite(y13_14_set, 0)

#define y15_16_reset_on    mcp2.digitalWrite(y15_16_reset, 1)
#define y15_16_reset_off   mcp2.digitalWrite(y15_16_reset, 0)

#define y15_16_set_on      mcp2.digitalWrite(y15_16_set, 1)
#define y15_16_set_off     mcp2.digitalWrite(y15_16_set, 0)

#define y17_18_reset_on    mcp2.digitalWrite(y17_18_reset, 1)
#define y17_18_reset_off   mcp2.digitalWrite(y17_18_reset, 0)

#define y17_18_set_on      mcp2.digitalWrite(y17_18_set, 1)
#define y17_18_set_off     mcp2.digitalWrite(y17_18_set, 0)

#define x4_reset_A_on      mcp3.digitalWrite(x4_reset_A, 1)
#define x4_reset_A_off     mcp3.digitalWrite(x4_reset_A, 0)

#define x4_set_A_on        mcp3.digitalWrite(x4_set_A, 1)
#define x4_set_A_off       mcp3.digitalWrite(x4_set_A, 0)

#define x4_reset_B_on      mcp3.digitalWrite(x4_reset_B, 1)
#define x4_reset_B_off     mcp3.digitalWrite(x4_reset_B, 0)

#define x4_set_B_on        mcp3.digitalWrite(x4_set_B, 1)
#define x4_set_B_off       mcp3.digitalWrite(x4_set_B, 0)

#define y19_20_reset_on    mcp3.digitalWrite(y19_20_reset, 1)
#define y19_20_reset_off   mcp3.digitalWrite(y19_20_reset, 0)

#define y19_20_set_on      mcp3.digitalWrite(y19_20_set, 1)
#define y19_20_set_off     mcp3.digitalWrite(y19_20_set, 0)

#define y21_22_reset_on    mcp3.digitalWrite(y21_22_reset, 1)
#define y21_22_reset_off   mcp3.digitalWrite(y21_22_reset, 0)

#define y21_22_set_on      mcp3.digitalWrite(y21_22_set, 1)
#define y21_22_set_off     mcp3.digitalWrite(y21_22_set, 0)

#define y23_24_reset_on    mcp3.digitalWrite(y23_24_reset, 1)
#define y23_24_reset_off   mcp3.digitalWrite(y23_24_reset, 0)

#define y23_24_set_on      mcp3.digitalWrite(y23_24_set, 1)
#define y23_24_set_off     mcp3.digitalWrite(y23_24_set, 0)

#define x5_reset_A_on      mcp3.digitalWrite(x5_reset_A, 1)
#define x5_reset_A_off     mcp3.digitalWrite(x5_reset_A, 0)

#define x5_set_A_on        mcp3.digitalWrite(x5_set_A, 1)
#define x5_set_A_off       mcp3.digitalWrite(x5_set_A, 0)

#define x5_reset_B_on      mcp3.digitalWrite(x5_reset_B, 1)
#define x5_reset_B_off     mcp3.digitalWrite(x5_reset_B, 0)

#define x5_set_B_on        mcp3.digitalWrite(x5_set_B, 1)
#define x5_set_B_off       mcp3.digitalWrite(x5_set_B, 0)

#define y25_26_reset_on    mcp3.digitalWrite(y25_26_reset, 1)
#define y25_26_reset_off   mcp3.digitalWrite(y25_26_reset, 0)

#define y25_26_set_on      mcp3.digitalWrite(y25_26_set, 1)
#define y25_26_set_off     mcp3.digitalWrite(y25_26_set, 0)

#define y27_28_reset_on    mcp4.digitalWrite(y27_28_reset, 1)
#define y27_28_reset_off   mcp4.digitalWrite(y27_28_reset, 0)

#define y27_28_set_on      mcp4.digitalWrite(y27_28_set, 1)
#define y27_28_set_off     mcp4.digitalWrite(y27_28_set, 0)

#define y29_30_reset_on    mcp4.digitalWrite(y29_30_reset, 1)
#define y29_30_reset_off   mcp4.digitalWrite(y29_30_reset, 0)

#define y29_30_set_on      mcp4.digitalWrite(y29_30_set, 1)
#define y29_30_set_off     mcp4.digitalWrite(y29_30_set, 0)

#define x6_reset_A_on      mcp4.digitalWrite(x6_reset_A, 1)
#define x6_reset_A_off     mcp4.digitalWrite(x6_reset_A, 0)

#define x6_set_A_on        mcp4.digitalWrite(x6_set_A, 1)
#define x6_set_A_off       mcp4.digitalWrite(x6_set_A, 0)

#define x6_reset_B_on      mcp4.digitalWrite(x6_reset_B, 1)
#define x6_reset_B_off     mcp4.digitalWrite(x6_reset_B, 0)

#define x6_set_B_on        mcp4.digitalWrite(x6_set_B, 1)
#define x6_set_B_off       mcp4.digitalWrite(x6_set_B, 0)

#define y31_32_reset_on    mcp4.digitalWrite(y31_32_reset, 1)
#define y31_32_reset_off   mcp4.digitalWrite(y31_32_reset, 0)

#define y31_32_set_on      mcp4.digitalWrite(y31_32_set, 1)
#define y31_32_set_off     mcp4.digitalWrite(y31_32_set, 0)

#define y33_34_reset_on    mcp4.digitalWrite(y33_34_reset, 1)
#define y33_34_reset_off   mcp4.digitalWrite(y33_34_reset, 0)

#define y33_34_set_on      mcp4.digitalWrite(y33_34_set, 1)
#define y33_34_set_off     mcp4.digitalWrite(y33_34_set, 0)

#define y35_36_reset_on    mcp4.digitalWrite(y35_36_reset, 1)
#define y35_36_reset_off   mcp4.digitalWrite(y35_36_reset, 0)

#define y35_36_set_on      mcp4.digitalWrite(y35_36_set, 1)
#define y35_36_set_off     mcp4.digitalWrite(y35_36_set, 0)

// MCP23017 objects to communicate with
Adafruit_MCP23X17 mcp1;
Adafruit_MCP23X17 mcp2;
Adafruit_MCP23X17 mcp3;
Adafruit_MCP23X17 mcp4;

// amount of time (ms) to wait after turning
// relay coil on or off
int onDelay = 10;
int offDelay = 10;

void setup() {
  Serial.begin(9600);
  Serial.println("mcp23017 demo");

  // button inputs for toggling relay pathways
  pinMode(2, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
  pinMode(4, INPUT_PULLUP);
  pinMode(5, INPUT_PULLUP);

  // init devices
  if (!mcp1.begin_I2C(addr1)) {
    Serial.println("Can't initialize mcp23017");
    while (1);
  }
  if (!mcp2.begin_I2C(addr2)) {
    Serial.println("Can't initialize mcp23017");
    while (1);
  }

  if (!mcp3.begin_I2C(addr3)) {
    Serial.println("Can't initialize mcp23017");
    while (1);
  }
  if (!mcp4.begin_I2C(addr4)) {
    Serial.println("Can't initialize mcp23017");
    while (1);
  }

  // configure relay pins as outputs
  for (int i = 0; i <= 15; i++) {
    mcp1.pinMode(i, OUTPUT);
    mcp2.pinMode(i, OUTPUT);
    mcp3.pinMode(i, OUTPUT);
    mcp4.pinMode(i, OUTPUT);
  }


  // turn off all outputs
  for (int i = 0; i <= 15; i++) {
    mcp1.digitalWrite(i, 0);
    mcp2.digitalWrite(i, 0);
    mcp3.digitalWrite(i, 0);
    mcp4.digitalWrite(i, 0);
  }

  // energize all relay "reset" coils to disconnect all paths
  resetAllRelays();

  // configure a default signal path from main in directly to main out
  initPassthroughPath();

}

void loop() {

  //testOutputs();    // cycle relay control lines simultaneously for scope probing
  //cycleAllRelays(); // energize and de-energize all relay coils for testing

  /*
    // route a path between main input and one of four output channels
    // based on an input button being pressed to select a channel path

    if (!digitalRead(2)) {
      routingPath1();  // connect signal path:  Main in --> Y2
    }

    if (!digitalRead(3)) {
      routingPath2();  // connect signal path:  Main in --> Y3
    }

    if (!digitalRead(4)) {
      routingPath3();  // connect signal path:  Main in --> Y4
    }

    if (!digitalRead(5)) {
      routingPath4();  // connect signal path:  Main in --> Y5
    }
  */


  // route a path between main input and output channels
  // with optional send/return paths enabled in between
  // based on an input button being pressed to select a channel path

  if (!digitalRead(2)) {
    initPassthroughPath();  // connect signal path:  Main in --> Main out
  }

  if (!digitalRead(3)) {
    enableSend1();  // connect signal path:  Main in --> Y2 --> Main out
  }

  if (!digitalRead(4)) {
    enableSend2();  // connect signal path:  Main in --> Y3 --> Main out
  }

  if (!digitalRead(5)) {
    enableSend1_2();  // connect signal path:  Main in --> Y2 --> Y3 --> Main out
  }

}


void initPassthroughPath() {

  resetAllRelays();

  // enable relay x1_A
  x1_set_A_on;
  delay(onDelay);
  x1_set_A_off;
  delay(offDelay);

  // enable relay y1_2
  y1_2_set_on;
  delay(onDelay);
  y1_2_set_off;
  delay(offDelay);
}

void enableSend1() {

  resetAllRelays();

  // enable relay x1_B
  x1_set_B_on;
  delay(onDelay);
  x1_set_B_off;
  delay(offDelay);

  // enable relay y1_2
  y1_2_set_on;
  delay(onDelay);
  y1_2_set_off;
  delay(offDelay);

  // enable relay x2_A
  x2_set_A_on;
  delay(onDelay);
  x2_set_A_off;
  delay(offDelay);

  // enable relay y7_8
  y7_8_set_on;
  delay(onDelay);
  y7_8_set_off;
  delay(offDelay);
}

void enableSend2() {

  resetAllRelays();

  // enable relay x1_A
  x1_set_A_on;
  delay(onDelay);
  x1_set_A_off;
  delay(offDelay);

  // enable relay y3_4
  y3_4_set_on;
  delay(onDelay);
  y3_4_set_off;
  delay(offDelay);

  // enable relay x3_A
  x3_set_A_on;
  delay(onDelay);
  x3_set_A_off;
  delay(offDelay);

  // enable relay y13_14
  y13_14_set_on;
  delay(onDelay);
  y13_14_set_off;
  delay(offDelay);
}

void enableSend1_2() {

  resetAllRelays();

  // enable relay x1_B
  x1_set_B_on;
  delay(onDelay);
  x1_set_B_off;
  delay(offDelay);

  // enable relay y1_2
  y1_2_set_on;
  delay(onDelay);
  y1_2_set_off;
  delay(offDelay);

  // enable relay x2_A
  x2_set_A_on;
  delay(onDelay);
  x2_set_A_off;
  delay(offDelay);

  // enable relay y9_10
  y9_10_set_on;
  delay(onDelay);
  y9_10_set_off;
  delay(offDelay);

  // enable relay x3_A
  x3_set_A_on;
  delay(onDelay);
  x3_set_A_off;
  delay(offDelay);

  // enable relay y13_14
  y13_14_set_on;
  delay(onDelay);
  y13_14_set_off;
  delay(offDelay);
}

void routingPath1() {

  resetAllRelays();

  // enable relay x1_B
  x1_set_B_on;
  delay(onDelay);
  x1_set_B_off;
  delay(offDelay);

  // enable relay y1_2
  y1_2_set_on;
  delay(onDelay);
  y1_2_set_off;
  delay(offDelay);
}

void routingPath2() {

  resetAllRelays();

  // enable relay x1_A
  x1_set_A_on;
  delay(onDelay);
  x1_set_A_off;
  delay(offDelay);

  // enable relay y3_4
  y3_4_set_on;
  delay(onDelay);
  y3_4_set_off;
  delay(offDelay);
}

void routingPath3() {

  resetAllRelays();

  // enable relay x1_B
  x1_set_B_on;
  delay(onDelay);
  x1_set_B_off;
  delay(offDelay);

  // enable relay y3_4
  y3_4_set_on;
  delay(onDelay);
  y3_4_set_off;
  delay(offDelay);
}

void routingPath4() {

  resetAllRelays();

  // enable relay x1_A
  x1_set_A_on;
  delay(onDelay);
  x1_set_A_off;
  delay(offDelay);

  // enable relay y5_6
  y5_6_set_on;
  delay(onDelay);
  y5_6_set_off;
  delay(offDelay);
}

void cycleAllRelays() {

  // use macros to turn relay channels on/off
  x1_set_A_on;
  delay(onDelay);
  x1_set_A_off;
  delay(offDelay);

  x1_reset_A_on;
  delay(onDelay);
  x1_reset_A_off;
  delay(offDelay);

  x1_set_B_on;
  delay(onDelay);
  x1_set_B_off;
  delay(offDelay);

  x1_reset_B_on;
  delay(onDelay);
  x1_reset_B_off;
  delay(offDelay);

  x2_set_A_on;
  delay(onDelay);
  x2_set_A_off;
  delay(offDelay);

  x2_reset_A_on;
  delay(onDelay);
  x2_reset_A_off;
  delay(offDelay);

  x2_set_B_on;
  delay(onDelay);
  x2_set_B_off;
  delay(offDelay);

  x2_reset_B_on;
  delay(onDelay);
  x2_reset_B_off;
  delay(offDelay);

  x3_set_A_on;
  delay(onDelay);
  x3_set_A_off;
  delay(offDelay);

  x3_reset_A_on;
  delay(onDelay);
  x3_reset_A_off;
  delay(offDelay);

  x3_set_B_on;
  delay(onDelay);
  x3_set_B_off;
  delay(offDelay);

  x3_reset_B_on;
  delay(onDelay);
  x3_reset_B_off;
  delay(offDelay);

  x4_set_A_on;
  delay(onDelay);
  x4_set_A_off;
  delay(offDelay);

  x4_reset_A_on;
  delay(onDelay);
  x4_reset_A_off;
  delay(offDelay);

  x4_set_B_on;
  delay(onDelay);
  x4_set_B_off;
  delay(offDelay);

  x4_reset_B_on;
  delay(onDelay);
  x4_reset_B_off;
  delay(offDelay);

  x5_set_A_on;
  delay(onDelay);
  x5_set_A_off;
  delay(offDelay);

  x5_reset_A_on;
  delay(onDelay);
  x5_reset_A_off;
  delay(offDelay);

  x5_set_B_on;
  delay(onDelay);
  x5_set_B_off;
  delay(offDelay);

  x5_reset_B_on;
  delay(onDelay);
  x5_reset_B_off;
  delay(offDelay);

  x6_set_A_on;
  delay(onDelay);
  x6_set_A_off;
  delay(offDelay);

  x6_reset_A_on;
  delay(onDelay);
  x6_reset_A_off;
  delay(offDelay);

  x6_set_B_on;
  delay(onDelay);
  x6_set_B_off;
  delay(offDelay);

  x6_reset_B_on;
  delay(onDelay);
  x6_reset_B_off;
  delay(offDelay);

  y1_2_set_on;
  delay(onDelay);
  y1_2_set_off;
  delay(offDelay);

  y1_2_reset_on;
  delay(onDelay);
  y1_2_reset_off;
  delay(offDelay);

  y3_4_set_on;
  delay(onDelay);
  y3_4_set_off;
  delay(offDelay);

  y3_4_reset_on;
  delay(onDelay);
  y3_4_reset_off;
  delay(offDelay);

  y5_6_set_on;
  delay(onDelay);
  y5_6_set_off;
  delay(offDelay);

  y5_6_reset_on;
  delay(onDelay);
  y5_6_reset_off;
  delay(offDelay);

  y7_8_set_on;
  delay(onDelay);
  y7_8_set_off;
  delay(offDelay);

  y7_8_reset_on;
  delay(onDelay);
  y7_8_reset_off;
  delay(offDelay);

  y9_10_set_on;
  delay(onDelay);
  y9_10_set_off;
  delay(offDelay);

  y9_10_reset_on;
  delay(onDelay);
  y9_10_reset_off;
  delay(offDelay);

  y11_12_set_on;
  delay(onDelay);
  y11_12_set_off;
  delay(offDelay);

  y11_12_reset_on;
  delay(onDelay);
  y11_12_reset_off;
  delay(offDelay);

  y13_14_set_on;
  delay(onDelay);
  y13_14_set_off;
  delay(offDelay);

  y13_14_reset_on;
  delay(onDelay);
  y13_14_reset_off;
  delay(offDelay);

  y15_16_set_on;
  delay(onDelay);
  y15_16_set_off;
  delay(offDelay);

  y15_16_reset_on;
  delay(onDelay);
  y15_16_reset_off;
  delay(offDelay);

  y17_18_set_on;
  delay(onDelay);
  y17_18_set_off;
  delay(offDelay);

  y17_18_reset_on;
  delay(onDelay);
  y17_18_reset_off;
  delay(offDelay);

  y19_20_set_on;
  delay(onDelay);
  y19_20_set_off;
  delay(offDelay);

  y19_20_reset_on;
  delay(onDelay);
  y19_20_reset_off;
  delay(offDelay);

  y21_22_set_on;
  delay(onDelay);
  y21_22_set_off;
  delay(offDelay);

  y21_22_reset_on;
  delay(onDelay);
  y21_22_reset_off;
  delay(offDelay);

  y23_24_set_on;
  delay(onDelay);
  y23_24_set_off;
  delay(offDelay);

  y23_24_reset_on;
  delay(onDelay);
  y23_24_reset_off;
  delay(offDelay);

  y25_26_set_on;
  delay(onDelay);
  y25_26_set_off;
  delay(offDelay);

  y25_26_reset_on;
  delay(onDelay);
  y25_26_reset_off;
  delay(offDelay);

  y27_28_set_on;
  delay(onDelay);
  y27_28_set_off;
  delay(offDelay);

  y27_28_reset_on;
  delay(onDelay);
  y27_28_reset_off;
  delay(offDelay);

  y29_30_set_on;
  delay(onDelay);
  y29_30_set_off;
  delay(offDelay);

  y29_30_reset_on;
  delay(onDelay);
  y29_30_reset_off;
  delay(offDelay);

  y31_32_set_on;
  delay(onDelay);
  y31_32_set_off;
  delay(offDelay);

  y31_32_reset_on;
  delay(onDelay);
  y31_32_reset_off;
  delay(offDelay);

  y33_34_set_on;
  delay(onDelay);
  y33_34_set_off;
  delay(offDelay);

  y33_34_reset_on;
  delay(onDelay);
  y33_34_reset_off;
  delay(offDelay);

  y35_36_set_on;
  delay(onDelay);
  y35_36_set_off;
  delay(offDelay);

  y35_36_reset_on;
  delay(onDelay);
  y35_36_reset_off;
  delay(offDelay);
}

void resetAllRelays() {

  x1_reset_A_on;
  delay(onDelay);
  x1_reset_A_off;
  delay(offDelay);

  x1_reset_B_on;
  delay(onDelay);
  x1_reset_B_off;
  delay(offDelay);

  x2_reset_A_on;
  delay(onDelay);
  x2_reset_A_off;
  delay(offDelay);

  x2_reset_B_on;
  delay(onDelay);
  x2_reset_B_off;
  delay(offDelay);

  x3_reset_A_on;
  delay(onDelay);
  x3_reset_A_off;
  delay(offDelay);

  x3_reset_B_on;
  delay(onDelay);
  x3_reset_B_off;
  delay(offDelay);

  x4_reset_A_on;
  delay(onDelay);
  x4_reset_A_off;
  delay(offDelay);

  x4_reset_B_on;
  delay(onDelay);
  x4_reset_B_off;
  delay(offDelay);

  x5_reset_A_on;
  delay(onDelay);
  x5_reset_A_off;
  delay(offDelay);

  x5_reset_B_on;
  delay(onDelay);
  x5_reset_B_off;
  delay(offDelay);

  x6_reset_A_on;
  delay(onDelay);
  x6_reset_A_off;
  delay(offDelay);

  x6_reset_B_on;
  delay(onDelay);
  x6_reset_B_off;
  delay(offDelay);

  y1_2_reset_on;
  delay(onDelay);
  y1_2_reset_off;
  delay(offDelay);

  y3_4_reset_on;
  delay(onDelay);
  y3_4_reset_off;
  delay(offDelay);

  y5_6_reset_on;
  delay(onDelay);
  y5_6_reset_off;
  delay(offDelay);

  y7_8_reset_on;
  delay(onDelay);
  y7_8_reset_off;
  delay(offDelay);

  y9_10_reset_on;
  delay(onDelay);
  y9_10_reset_off;
  delay(offDelay);

  y11_12_reset_on;
  delay(onDelay);
  y11_12_reset_off;
  delay(offDelay);

  y13_14_reset_on;
  delay(onDelay);
  y13_14_reset_off;
  delay(offDelay);

  y15_16_reset_on;
  delay(onDelay);
  y15_16_reset_off;
  delay(offDelay);

  y17_18_reset_on;
  delay(onDelay);
  y17_18_reset_off;
  delay(offDelay);

  y19_20_reset_on;
  delay(onDelay);
  y19_20_reset_off;
  delay(offDelay);

  y21_22_reset_on;
  delay(onDelay);
  y21_22_reset_off;
  delay(offDelay);

  y23_24_reset_on;
  delay(onDelay);
  y23_24_reset_off;
  delay(offDelay);

  y25_26_reset_on;
  delay(onDelay);
  y25_26_reset_off;
  delay(offDelay);

  y27_28_reset_on;
  delay(onDelay);
  y27_28_reset_off;
  delay(offDelay);

  y29_30_reset_on;
  delay(onDelay);
  y29_30_reset_off;
  delay(offDelay);

  y31_32_reset_on;
  delay(onDelay);
  y31_32_reset_off;
  delay(offDelay);

  y33_34_reset_on;
  delay(onDelay);
  y33_34_reset_off;
  delay(offDelay);

  y35_36_reset_on;
  delay(onDelay);
  y35_36_reset_off;
  delay(offDelay);
}

// intended to be used with no relays connected
// so control signals can be probed for activity
void testOutputs() {

  uint16_t data16 = 0xffff;
  mcp1.writeGPIOAB(data16);
  mcp2.writeGPIOAB(data16);
  mcp3.writeGPIOAB(data16);
  mcp4.writeGPIOAB(data16);

  delay(100);

  data16 = 0x0000;
  mcp1.writeGPIOAB(data16);
  mcp2.writeGPIOAB(data16);
  mcp3.writeGPIOAB(data16);
  mcp4.writeGPIOAB(data16);

  delay(100);

}
