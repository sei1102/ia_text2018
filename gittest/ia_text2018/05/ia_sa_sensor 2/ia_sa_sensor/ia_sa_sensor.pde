import processing.serial.*;
import cc.arduino.*;

PImage img;

Arduino arduino;
int sensorPin = 2;

void setup() {
  size(500,500);
  arduino = new Arduino(this, Arduino.list()[5]);
}

void draw() {
  background(255);
  int val = arduino.analogRead(sensorPin);
  //img = loadImage("meishi_sozai.png");
  img = loadImage("busu.jpg");
  //image(img, width/2, height/2, val, val);
  image(img, 0, 0, val, val);
  //ellipse(250,250,val/2,val/2);
  println(val);
  
}  
  //画像をセンサーの値によって大きさを変えたりする！月曜まで
