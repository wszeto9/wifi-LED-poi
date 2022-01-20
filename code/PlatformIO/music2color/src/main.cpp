#include <Arduino.h>
#include <WiFi.h>
#include <FastLED.h>
#include <string.h>
#include "SparkFun_LIS2DH12.h" 
#include <Wire.h>
#include <analogWrite.h>

SPARKFUN_LIS2DH12 accel;

//LED init
#define LED_BUILTIN  13
#define LED_ARRAY 17
#define NUM_LEDS    8 
#define PATTERN_LEN 1
#define BRIGHTNESS  255
CRGB leds[NUM_LEDS];
String rgbState = "000000000";
// CRGB current_color = CRGB(100, 0, 0); 

//wifi init
const char* ssid = "winnie";
const char* password = "allisonswifisucks";
// Set web server port number to 80
WiFiServer server(80);


// Variable to store the HTTP request
String header;

// Current time
unsigned long currentTime = millis();
// Previous time
unsigned long previousTime = 0; 
// Define timeout time in milliseconds (example: 2000ms = 2s)
const long timeoutTime = 2000;

/* Setting PWM Properties for LED power indicator */
int dutyCycle;
float battery_voltage;
const int PWMFreq = 1; 
const int PWMChannel = 0;
const int PWMResolution = 8;
const int MAX_DUTY_CYCLE = (int)(pow(2, PWMResolution) - 1);

float brightness_coeff = 1;
  int r = 100;
  int g = 0;
  int b = 0;

String charge_state = "off"; 
String discharge_state = "off"; 
int CHARGE_OUTPUT = 27; 
int DISCHARGE_OUTPUT = 14; 
const int INCREASE_RATE = 5; 
const int CHARGE_DELAY_TIME = 100; 
int charge_duty_cycle = 10; 
unsigned long charge_prev_increase = millis(); 
unsigned long charge_current_time = millis(); 

void setup() {
  battery_voltage = (float) analogRead(34) / 4095 * 3.3 * 2;
  ledcSetup(PWMChannel, PWMFreq, PWMResolution);
  ledcAttachPin(LED_BUILTIN, PWMChannel);
  ledcWrite(PWMChannel, MAX_DUTY_CYCLE * (battery_voltage-3.0) / (4.2-3.0));

  pinMode(LED_BUILTIN, OUTPUT); 
  pinMode(CHARGE_OUTPUT, OUTPUT); 
  pinMode(DISCHARGE_OUTPUT, OUTPUT); 
  digitalWrite(CHARGE_OUTPUT, LOW); 
  digitalWrite(DISCHARGE_OUTPUT, LOW); 

  FastLED.addLeds<NEOPIXEL, LED_ARRAY>(leds, NUM_LEDS);
  
  // set the LED brightness
  FastLED.setBrightness(BRIGHTNESS);

  fill_solid(leds, NUM_LEDS, CRGB(r, g, b));
  FastLED.show();

  delay( 3000 ); // power-up safety delay
  Serial.begin(115200);
  //Serial.print("HERE");
  // Connect to Wi-Fi network with SSID and password

 // if (!WiFi.config(local_IP, gateway, subnet)) {
 //   Serial.println("STA Failed to configure");
 // }

 Wire.begin(16,4);

 if (accel.begin() == false)
  {
    Serial.println("Accelerometer not detected");
  }
  accel.setScale(LIS2DH12_16g);
  accel.setDataRate(LIS2DH12_ODR_200Hz);
  accel.setMode(LIS2DH12_NM_10bit);

  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  // Print local IP address and start web server

  //current_color = CRGB(0, 100, 0);
  r = 0; 
  g = 100; 
  b = 0;
  fill_solid(leds, NUM_LEDS, CRGB(r, g, b));
  FastLED.show();

  Serial.println("");
  Serial.println("WiFi connected.");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  server.begin();


}

void loop() {

//set brightness coeff based on accel readings
if (accel.available())
  {
    float accelX = accel.getX()/1000;
    float accelY = accel.getY()/1000;
    float accelZ = accel.getZ()/1000;
    float accel_mag = sqrt(accelX * accelX + accelY * accelY + accelZ * accelZ);
    brightness_coeff = (float)0.5/(accel_mag-0.5);
  }

  // put your main code here, to run repeatedly:
  WiFiClient client = server.available();   // Listen for incoming clients

  if (client) {                             // If a new client connects,
    currentTime = millis();
    previousTime = currentTime;
    Serial.println("New Client.");          // print a message out in the serial port
    String currentLine = "";                // make a String to hold incoming data from the client
    while (client.connected() && currentTime - previousTime <= timeoutTime) {  // loop while the client's connected
      currentTime = millis();
      if (client.available()) {             // if there's bytes to read from the client,
        char c = client.read();             // read a byte, then
        Serial.write(c);                    // print it out the serial monitor
        header += c;
        if (c == '\n') {                    // if the byte is a newline character
          // if the current line is blank, you got two newline characters in a row.
          // that's the end of the client HTTP request, so send a response:
          if (currentLine.length() == 0) {
            // HTTP headers always start with a response code (e.g. HTTP/1.1 200 OK)
            // and a content-type so the client knows what's coming, then a blank line:
            client.println("HTTP/1.1 200 OK");
            client.println("Content-type:text/html");
            client.println("Connection: close");
            client.println();

            if (header.indexOf("GET /" + String(CHARGE_OUTPUT) + "/on") >= 0) {
              Serial.println("charging");
              charge_state = "on";
              //digitalWrite(CHARGE_OUTPUT, HIGH);
              // charge_current_time = millis(); 
              // if (charge_duty_cycle <= 250 && charge_current_time >= CHARGE_DELAY_TIME){
              //   charge_duty_cycle += INCREASE_RATE;
              //   Serial.print(charge_duty_cycle);  
              // }
              // analogWrite(LED_BUILTIN, charge_duty_cycle); 
            } else if (header.indexOf("GET /" + String(CHARGE_OUTPUT) + "/off") >= 0) {
              Serial.println("not charging");
              charge_state = "off";
              digitalWrite(CHARGE_OUTPUT, LOW);
            } else if (header.indexOf("GET /" + String(DISCHARGE_OUTPUT) + "/on") >= 0) {
              Serial.println("discharging");
              discharge_state = "on";
              digitalWrite(DISCHARGE_OUTPUT, HIGH);
            } else if (header.indexOf("GET /" + String(DISCHARGE_OUTPUT) + "/off") >= 0) {
              Serial.println("not discharging");
              discharge_state = "off";
              digitalWrite(DISCHARGE_OUTPUT, LOW);
            }
 
            // Display the HTML web page
            client.println("<!DOCTYPE html><html>");
            client.println("<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
            client.println("<link rel=\"icon\" href=\"data:,\">");
            // CSS to style the on/off buttons 
            // Feel free to change the background-color and font-size attributes to fit your preferences
            client.println("<style>html { font-family: Helvetica; display: inline-block; margin: 0px auto; text-align: center;}");
            client.println(".button { background-color: #4CAF50; border: none; color: white; padding: 16px 40px;");
            client.println("text-decoration: none; font-size: 30px; margin: 2px; cursor: pointer;}");
            client.println(".button2 {background-color: #555555;}</style></head>");
 
            // Web Page Heading
            client.println("<body><h1>ESP32 Web Server</h1>");
 
            // Display current state, and ON/OFF buttons for GPIO 26  
            client.println("<p>Charging - State " + charge_state + "</p>");
            // If the output26State is off, it displays the ON button       
            if (charge_state=="off") {
              client.println("<p><a href=\"/" + String(CHARGE_OUTPUT) + "/on\"><button class=\"button\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/" + String(CHARGE_OUTPUT) + "/off\"><button class=\"button button2\">OFF</button></a></p>");
            } 
 
            // Display current state, and ON/OFF buttons for GPIO 27  
            client.println("<p>Discharging - State " + discharge_state + "</p>");
            // If the output27State is off, it displays the ON button       
            if (discharge_state == "off") {
              client.println("<p><a href=\"/" + String(DISCHARGE_OUTPUT) + "/on\"><button class=\"button\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/" + String(DISCHARGE_OUTPUT) + "/off\"><button class=\"button button2\">OFF</button></a></p>");
            }
            client.println("</body></html>");
            
            //Serial.println(header); 
            if (header.indexOf("GET /" + String(LED_ARRAY)) >= 0)
            {
              String color_string = header.substring(8, 17);
              Serial.println(color_string);
              if (color_string.toInt() > 0) 
              {
                r = color_string.substring(0, 3).toInt(); 
                g = color_string.substring(3, 6).toInt(); 
                b = color_string.substring(6, 9).toInt(); 
              }
        
            }
            
            // The HTTP response ends with another blank line
            client.println();
            // Break out of the while loop
            break;
          } else { // if you got a newline, then clear currentLine
            currentLine = "";
          }
        } else if (c != '\r') {  // if you got anything else but a carriage return character,
          currentLine += c;      // add it to the end of the currentLine
        }
      }
    }
    // Clear the header variable
    header = "";
    // Close the connection
    client.stop();
    Serial.println("Client disconnected.");
    Serial.println("");
    delay(1000);
  }

  if (charge_state == "on")
  {
    charge_current_time = millis(); 
    if (charge_duty_cycle <= 250 && charge_current_time >= CHARGE_DELAY_TIME){
      charge_duty_cycle += INCREASE_RATE;
      Serial.print(charge_duty_cycle);  
    }
    analogWrite(CHARGE_OUTPUT, charge_duty_cycle); 
  }
  //testing
  if (!accel.available()){
    brightness_coeff = 1; 
  }
  //brightness_coeff = 1; 
  int r_adj = constrain((int)r * brightness_coeff, 0, 255);
  int g_adj = constrain((int)g * brightness_coeff, 0, 255);
  int b_adj = constrain((int)b * brightness_coeff, 0, 255);
  
  char buffer[50];
  //sprintf (buffer, "%r: %d, %d, g: %d, %d, b: %d, %d, coeff: %f",r, r_adj, g, g_adj, b, b_adj, brightness_coeff);
  //Serial.println (buffer);
  fill_solid(leds, NUM_LEDS, CRGB(r_adj, g_adj, b_adj));
  FastLED.show();
  delay(100);
}

