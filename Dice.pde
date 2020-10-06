void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  clear();
  Die bob = new Die(10,10);
  bob.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    int rollValue = (int)(Math.random()*6);
  }
  void show()
  {
    noStroke();
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    rect(myX,myY,50,50);
    text("1", myX, myY);
    fill(255); 
  }
}
