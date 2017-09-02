import processing.sound.*;

class Regen {
  WhiteNoise noise;
  
  Regen() {
    noise = new WhiteNoise(Schieberegler.this);
    noise.play();
  }

  void update() {
    float volume = map(schieberegler, MINIMUM, MAXIMUM, 0, 1);
    noise.amp(volume);
  }
}