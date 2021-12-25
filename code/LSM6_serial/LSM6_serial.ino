/*
The sensor outputs provided by the library are the raw
16-bit values obtained by concatenating the 8-bit high and
low accelerometer and gyro data registers. They can be
converted to units of g and dps (degrees per second) using
the conversion factors specified in the datasheet for your
particular device and full scale setting (gain).

Example: An LSM6DS33 gives an accelerometer Z axis reading
of 16276 with its default full scale setting of +/- 2 g. The
LA_So specification in the LSM6DS33 datasheet (page 11)
states a conversion factor of 0.061 mg/LSB (least
significant bit) at this FS setting, so the raw reading of
16276 corresponds to 16276 * 0.061 = 992.8 mg = 0.9928 g.
*/

#include <Wire.h>
#include <LSM6.h>

LSM6 imu;

char report[80];

void setup()
{
  Serial.begin(9600);
 while(!Serial){}
  Wire.begin (16, 4);

  if (!imu.init())
  {
    Serial.println("Failed to detect and initialize IMU!");
    while (1);
  }
  imu.enableDefault();
  /* desired perameters: 
   *  1000 ODR_XL -high performance 1.66kHz
   *  01 FS_XL +/- 16g 
   *  00 BW_XL 400 Hz AA
   *  0b10000100 = 0x84
   *  
   */
   imu.writeReg(0x10, 0x84); //sets accelerometer to +/- 16g

}

void loop()
{
  imu.read();
  Serial.print("A[g] :");
  //.488 mg/LSB @ +/- 16g
  Serial.print((float)imu.a.x * .488/1000); 
  Serial.print(" ");
  Serial.print((float)imu.a.y * .488/1000); 
  Serial.print(" ");
  Serial.print((float)imu.a.z * .488/1000); 
  Serial.print(" ");
  Serial.print("G[dps] :");
  Serial.print((float)imu.g.x * 8.75/1000); 
  Serial.print(" ");
  Serial.print((float)imu.g.y * 8.75/1000); 
  Serial.print(" ");
  Serial.println((float)imu.g.z * 8.75/1000); 
  delay(100);
}
