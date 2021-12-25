void setup() {
  //pin declaration
  #define DEBUG_LED 13
  #define LED_PIN 17
  #define CAP_VSENSE 12
  #define CHARGE_CAP_EN 27
  #define BAT_VSENSE 34
  #define SCL 4
  #define SDA 16
  #define BCLK 26
  #define WS 25
  #define D_OUT_MIC 33
  #define FIRE_HIGH 14


  //pinMode
  pinMode(LED_PIN, OUTPUT);
  pinMode(CAP_VSENSE, INPUT);
  pinMode(CHARGE_CAP_EN, OUTPUT);
  pinMode(BAT_VSENSE, INPUT);
  pinMode(DEBUG_LED, OUTPUT);

  //IMU
  /*
  #include <Wire.h>
  #include <LSM6.h>
  LSM6 imu;
  char report[80];
  Wire.begin(SDA, SCL);
  imu.enableDefault();
  /* desired perameters: 
   *  1000 ODR_XL -high performance 1.66kHz
   *  01 FS_XL +/- 16g 
   *  00 BW_XL 400 Hz AA
   *  0b10000100 = 0x84
   *  
   
   imu.writeReg(0x10, 0x84); //sets accelerometer to +/- 16g
  */
  Serial.begin(9600);
}

void loop() {
  while(!Serial){}
  
  //Capacitor charging
  
  Serial.println(2*3.3*analogRead(CAP_VSENSE)/4095); //2:1 voltage divider, analogRead is out of 4095
  digitalWrite(CHARGE_CAP_EN, HIGH);
  delay(100);
  

  //IMU read
  /*
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
  */ 
}
