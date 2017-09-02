class Blitz {
  void draw(int schieberegler) {
    float zufallsZahl = random(MAXIMUM * 80);
    if (zufallsZahl < schieberegler) {
      background(255);
    } else {
      background(0);
    }
  }
}