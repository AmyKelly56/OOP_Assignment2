class ReFuel extends Actions
{
  String s = "Fuel";
  boolean fuelStation = false;
  boolean remove = false;
  float distance;

  ReFuel()
  {
    position = new PVector(random(4, 1000), random(4, 600));
  }

  void draw()
  {
    fill(#FF0303);
    ellipse(position.x + 4, position.y -5, 35, 35);
    fill(255);
    textFont(f2);
    textSize(20);
    text(s, position.x, position.y);
  }

  void crash()
  {
    distance = dist(taxi.position.x, taxi.position.y, position.x, position.y);

    if (distance < 24)
    {
      score.subScore();
      fuel.fuel = 200;
      fuel.r = 0;
      fuel.g = 255;
      fuelStation = false;
      remove = true;
    }
  }
}