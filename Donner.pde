import processing.sound.*;

class Donner {
  SoundFile file;
  float RATE = 1;

  Donner() {
    file = new SoundFile(Schieberegler.this, "Donner.wav");
  }
  
  void update() {
    float volume = map(schieberegler, MINIMUM, MAXIMUM, 0, 1);
    file.play(RATE, volume);
  }
}