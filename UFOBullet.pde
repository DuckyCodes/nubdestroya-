class UFOBullet extends GameObject {

  UFOBullet() {
    timer = 60;
    lives = 12;
    size=10;
    location=myUFO.location.copy();
    velocity=new PVector(myShip.velocity.x+(myShip.location.x-location.x), myShip.velocity.y+(myShip.location.y-location.y));
    velocity.setMag(10);
  
  }

  void show() {
    stroke(pink);
    noFill();
    ellipse(location.x, location.y, size, size);
  }
  void act() {
    super.act();

    timer--;

    if (timer<=0) {
      lives =0;
    }
  }
}
