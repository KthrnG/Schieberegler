class Blitz {

  void update() {
    float zufallsZahl = random(MAXIMUM * 80);
    if (zufallsZahl < schieberegler) {
      background(255);
      Donner donner = new Donner();
      donner.update();
    } else {
      background(0);
    }
  }

}