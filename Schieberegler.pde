import processing.serial.*;

Blitz blitz;
int schieberegler = 0;

void setup() {
  size(400, 100);
  //println(Serial.list());
  Serial arduino = new Serial(this, Serial.list()[1], 9600);
  arduino.bufferUntil('\n');
  frameRate(4);
}

void draw() {
  background(0);
  textSize(30);
  text("Schieberegler: " + schieberegler, 10, 30);
  float wahrscheinlichkeitFuerEinenBlitz = map(schieberegler, 0, 1023, 0, 0.5);
  float zufallsZahl = random(1);
  if (zufallsZahl < wahrscheinlichkeitFuerEinenBlitz) {
    new Blitz().draw();
  }
}

void serialEvent(Serial arduino) {
  String rawString = arduino.readString();
  println(rawString);
  schieberegler = int(Float.parseFloat(rawString));
}