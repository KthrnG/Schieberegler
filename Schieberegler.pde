import processing.serial.*;

Blitz blitz;
int schieberegler = 0;
int MAXIMUM = 100;

void setup() {
  //println(Serial.list());
  Serial arduino = new Serial(this, Serial.list()[1], 9600);
  arduino.bufferUntil('\n');

  fullScreen();
  frameRate(10);

  blitz = new Blitz();
}

void draw() {
  blitz.draw(schieberegler);
}

void serialEvent(Serial arduino) {
  String rawString = arduino.readString();
  println(rawString);
  schieberegler = int(Float.parseFloat(rawString));
}