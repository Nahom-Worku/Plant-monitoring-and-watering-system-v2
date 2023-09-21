
#include <SoftwareSerial.h>
//************************ tx  rx
SoftwareSerial mybluetooth(A1, A0);

int led = 12;

#include <Wire.h>
#include <LiquidCrystal_I2C.h>

LiquidCrystal_I2C lcd(0x27, 20, 4);


void setup() {


  lcd.init();                      // initialize the lcd

  // Print a message to the LCD.
  lcd.backlight();

  pinMode(led, OUTPUT);
  Serial.begin(9600);
  mybluetooth.begin(9600);
}

void loop() {
  while (mybluetooth.available()) {
    int data = mybluetooth.read();
    Serial.println(data);

    if (data == 1) {
      lcd.setCursor(0, 0);
      lcd.print("Dry Soil Watering...");
    }

    else if (data == 0) {
      lcd.setCursor(0, 1);
      lcd.print("Soil is watered");
    }

    else if (data == 5) {
      lcd.setCursor(0, 2);
      lcd.print("Water is running out");
    }
  }
}
