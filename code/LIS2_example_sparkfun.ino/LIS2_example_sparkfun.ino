#include <Wire.h>
#include "SparkFun_LIS2DH12.h"
SPARKFUN_LIS2DH12 accel;

#include <Adafruit_NeoPixel.h>
#define PIN        17
#define NUMPIXELS 8
Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

void setup()
{
  Serial.begin(115200);
  Wire.begin(16,4);
  if (accel.begin() == false)
  {
    Serial.println("Accelerometer not detected. Are you sure you did a Wire1.begin()? Freezing...");
    while(1);
  }
  accel.setScale(LIS2DH12_16g);
  accel.setDataRate(LIS2DH12_ODR_400Hz);
  accel.setMode(LIS2DH12_LP_8bit);
  pixels.begin();
}

void loop()
{
  float time_delay = 0;
  if (accel.available())
  {
    float accelX = accel.getX()/1000;
    float accelY = accel.getY()/1000;
    float accelZ = accel.getZ()/1000;
    /*Serial.print("Acc [g] ");
    Serial.print(accelX);
    Serial.print(" x, ");
    Serial.print(accelY);
    Serial.print(" y, ");
    Serial.print(accelZ);
    Serial.print(" z");
    Serial.println();*/
    int time_delay = (int) constrain((sqrt(accelX * accelX + accelY * accelY + accelZ * accelZ)* 50)-70, 0, 1000);
    Serial.println(time_delay);
    for(int i=0; i<NUMPIXELS; i++) { 
      pixels.setPixelColor(i, pixels.Color(200, 200, 200));
      pixels.show();
      }
    delay(time_delay);
    for(int i=0; i<NUMPIXELS; i++) { 
      pixels.setPixelColor(i, pixels.Color(0, 0, 0));
      pixels.show();
      }
    delay(time_delay);
  }
}
