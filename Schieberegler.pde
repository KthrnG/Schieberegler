import processing.serial.*;

int schieberegler = 0;
int MAXIMUM = 100;

void setup() {
  size(400, 100);
  //println(Serial.list());
  Serial arduino = new Serial(this, Serial.list()[1], 9600);
  arduino.bufferUntil('\n');
  frameRate(10);
}

void draw() {
  background(0);
  //textSize(30);
  //text("Schieberegler: " + schieberegler, 10, 30);
  float zufallsZahl = random(MAXIMUM * 4);
  if (zufallsZahl < schieberegler) {
    new Blitz().draw();
  }
}

void serialEvent(Serial arduino) {
  String rawString = arduino.readString();
  println(rawString);
  schieberegler = int(Float.parseFloat(rawString));
}