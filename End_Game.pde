class GameOver
{
  String GameOver = "Taxi Pick Up";
  int x = 0;
  int y = 0;
  
  void draw()
  {
    textFont(f2);
    fill(#00ADFA);
    strokeWeight(2);
    rect(500, y, y + 1600, y + 190);
    strokeWeight(1);
    textSize(50);
    fill(255);
    text(GameOver, 500, 50);
    textSize(10);
  }
  
  void expandGameOver()
  {
    y += 4;
    
    if (y > 320)
    {
      y = 320;
    }
  }
}