import processing.serial.*;

Blitz blitz;
Regen regen;
int schieberegler = 0;
int MAXIMUM = 100;
int MINIMUM = 0;

void setup() {
  //println(Serial.list());
  Serial arduino = new Serial(this, Serial.list()[1], 9600);
  arduino.bufferUntil('\n');

  fullScreen();
  frameRate(10);

  blitz = new Blitz();
  regen = new Regen();
}

void draw() {
  blitz.update();
  regen.update();
}

void serialEvent(Serial arduino) {
  String rawString = arduino.readString();
  //println(rawString);
  if (rawString != null) {
    schieberegler = int(Float.parseFloat(rawString));
  }
}