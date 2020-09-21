#include <Adafruit_GFX.h>    
#include <Adafruit_ST7735.h> 
#include <SPI.h>
#define TFT_CS     10
#define TFT_RST    9  
#define TFT_DC     8
#define TFT_SCLK 13   
#define TFT_MOSI 11   
#define Pressure 1
Adafruit_ST7735 tft = Adafruit_ST7735(TFT_CS,  TFT_DC, TFT_RST);
int sensorVal;
float voltage;
float pressure_pascal;                      
float pressure_bar;
float pressure_psi;
float pressure=0;
String pres;
int speakerOut =3;
int count=0;
const int allowed=15;
const int buttonPin = 4; 
    
void setup(void) {
  tft.initR(INITR_REDTAB); 
  tft.fillScreen(ST7735_BLACK); 
  tft.setTextColor(ST7735_RED);
  tft.setTextSize(0);
  pinMode(speakerOut,OUTPUT);
  pinMode(buttonPin, INPUT);
  Serial.begin(9600);
}

void loop() {
  tft.invertDisplay(false);
  int cursor_loc=20;
  while(count<=50000)
  {
    for(int i=0; i<6;i++)
    {
      pressure=pressure+reading("pascal");
    }
    pressure=pressure/5;
    cursor_loc=disp(pressure, cursor_loc);
    delay(1000);
    if (pressure>allowed)
    {beep();}
  }
  
}
void beep(){
  int alarm=0;
  while(alarm==0)
  {
      alarm = digitalRead(buttonPin);
      if (alarm==HIGH)
      {
        return;
      }
      digitalWrite(speakerOut , HIGH);
      delayMicroseconds(1000);
      digitalWrite(speakerOut, LOW );
      delayMicroseconds(1000);
  }
}
int disp(float pressure, int cursorPlace)
{
  pres=String(pressure);
  tft.setCursor(30,cursorPlace);
  tft.println("Pressure= "+pres);
  cursorPlace=cursorPlace+10;
  if (cursorPlace==150)
  {
    tft.fillScreen(ST7735_BLACK); 
    cursorPlace=20; 
  } 
  return cursorPlace;
}

float reading(String which_one)
{
  sensorVal=analogRead(A1);
  voltage = (sensorVal*5.0)/1024.0;
  if( which_one=="pascal")
  {
    pressure_pascal = (3.0*((float)voltage-0.475));
    return pressure_pascal; 
  }
  if (which_one=="bar")
  {
    pressure_bar = pressure_pascal/10e5;
    return pressure_bar;
  }
  if (which_one=="psi")
  {
    pressure_psi = pressure_bar*14.5038;
    return pressure_psi;
  }
}
