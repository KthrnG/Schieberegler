import processing.serial.*;

void setup() {
  //println(Serial.list());
  Serial arduino = new Serial(this, Serial.list()[1], 9600);
  arduino.bufferUntil('\n');
}
void draw() {
}

void serialEvent(Serial arduino) {
  String rawString = arduino.readString();
  println(rawString);
}