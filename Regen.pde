import processing.sound.*;

class Regen {
  WhiteNoise noise;
  
  Regen(Schieberegler app) {
    noise = new WhiteNoise(app);
    noise.play();
  }

  void update(int schieberegler) {
    noise.amp(map(schieberegler, MINIMUM, MAXIMUM, 0, 1));
  }
}