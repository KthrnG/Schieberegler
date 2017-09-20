int motorA = 5;
int motorB = 6;
int enablePin = 3;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode (A0, INPUT);
  pinMode(enablePin, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int value = map(analogRead(A0), 0, 1023, 0, 100);
  Serial.println(value);
  delay(100);

//  digitalWrite(enablePin, HIGH);
//  analogWrite(motorA, 0);
//  analogWrite(motorB, 255);
//  delay(100);
//  digitalWrite(enablePin, LOW);

}

