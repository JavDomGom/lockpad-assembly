#include <stdio.h>
#include <Servo.h>

Servo sA, sB;
 
void setup() {
  Serial.begin(9600);
  sA.attach(8);
  sB.attach(9);

  sA.write(0);
  sB.write(0);
}
 
void loop() {
  for(int b = 0;b < 180;b+=18){
    sB.write(b);
    
    for(int a = 0;a < 180;a+=18){
      char log[10];
      sprintf(log, "%3d\t%3d", a, b);
      Serial.println(log);
      
      sA.write(a);
      delay(250);
    }
  }
}
