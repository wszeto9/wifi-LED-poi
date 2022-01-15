#include <Arduino.h>
#include <WiFi.h>
#include <FastLED.h>
#include <string.h>

#define LED_BUILTIN  13
#define LED_ARRAY 17
#define NUM_LEDS    8 // 150 LEDs in the full strip
#define PATTERN_LEN 4
#define BRIGHTNESS  256
#define LED_TYPE  WS2812
#define COLOR_ORDER GRB

CRGB leds[NUM_LEDS];

const char* ssid = "SLP-F9FD713SLMX0";
const char* password = "thiscatischonky";


// Set web server port number to 80
WiFiServer server(80);

// Variable to store the HTTP request
String header;

// Auxiliar variables to store the current output state
String rgbState = "000000000"; //GRB
CRGB current_color = CRGB(0, 0, 0); 
// Current time
unsigned long currentTime = millis();
// Previous time
unsigned long previousTime = 0; 
// Define timeout time in milliseconds (example: 2000ms = 2s)
const long timeoutTime = 2000;

void setup() {
  // put your setup code here, to run once:
  delay( 3000 ); // power-up safety delay

  FastLED.addLeds<WS2812, LED_ARRAY, GRB>(leds, NUM_LEDS);
  
  // set the LED brightness
  FastLED.setBrightness(BRIGHTNESS);

  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(115200);
  //Serial.print("HERE");
  // Connect to Wi-Fi network with SSID and password
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  // Print local IP address and start web server
  Serial.println("");
  Serial.println("WiFi connected.");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  server.begin();
}

void loop() {
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
            
            //Serial.println(header); 
            String color_string = header.substring(8, 17);
            Serial.println(color_string);
            if (color_string.toInt() > 0) 
            {
              int g = color_string.substring(0, 3).toInt(); 
              int r = color_string.substring(3, 6).toInt(); 
              int b = color_string.substring(6, 9).toInt(); 

              
              current_color = CRGB(g, r, b);
            }
              

            //int g = color//1000000
        
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
  }

  fill_solid(leds, NUM_LEDS, current_color);
  FastLED.show();

}

void setColorRGB(byte r, byte g, byte b) {
  // create a new RGB color
  CRGB color = CRGB(r, g, b);

  // use FastLED to set the color of all LEDs in the strip to the same color
  fill_solid(leds, NUM_LEDS, color);
}

