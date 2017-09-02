import processing.serial.*;

int schieberegler = 0;

void setup() {
  size(400, 100);
  //println(Serial.list());
  Serial arduino = new Serial(this, Serial.list()[1], 9600);
  arduino.bufferUntil('\n');
}

void draw() {
  background(0);
  textSize(30);
  text("Schieberegler: " + schieberegler, 10, 30);
}

void serialEvent(Serial arduino) {
  String rawString = arduino.readString();
  println(rawString);
  schieberegler = int(Float.parseFloat(rawString));
}