int sum = 0;
int rollValue = 0;
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  clear();
  background(200);
  int i = 1;
  while(i<4){
  Die bob = new Die(110 * i,40);
  bob.show();
  Die sue = new Die(110 * i,160);
  sue.show();
  Die joe = new Die(110 * i,280);
  joe.show();
  i++;
  }
  text("Sum: " + sum, 250, 400);
  text("Did you know that the modern dice originated in China in 600 b.c.?!", 70, 460);
  sum = 0;
}

void mousePressed()
{
  redraw();
}
class Die 
{
  int myX, myY;
  Die(int x, int y) 
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
     rollValue = (int)(Math.random()*6 + 1);
     sum = rollValue + sum;
  }
  void show()
  {
    noStroke();
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    rect(myX,myY,90,90);
    fill(0);
   if (rollValue == 1){
      ellipse(myX+45, myY+45, 20, 20);
    }else if(rollValue == 2){
      ellipse(myX+22.5, myY+22.5, 20, 20);
      ellipse(myX+67.5, myY+67.5, 20, 20);
    }else if(rollValue == 3){
      ellipse(myX+22.5, myY+22.5, 20, 20);
      ellipse(myX+45, myY+45, 20, 20);
      ellipse(myX+67.5, myY+67.5, 20, 20);
    }else if(rollValue == 4){
      ellipse(myX+22.5, myY+22.5, 20, 20);
      ellipse(myX+67.5, myY+22.5, 20, 20);
      ellipse(myX+22.5, myY+67.5, 20, 20);
      ellipse(myX+67.5, myY+67.5, 20, 20);
    }else if(rollValue == 5){
      ellipse(myX+22.5, myY+22.5, 20, 20);
      ellipse(myX+67.5, myY+22.5, 20, 20);
      ellipse(myX+45, myY+45, 20, 20);
      ellipse(myX+22.5, myY+67.5, 20, 20);
      ellipse(myX+67.5, myY+67.5, 20, 20);
    } else if (rollValue == 6){
      ellipse(myX+22.5, myY+22.5, 20, 20);
      ellipse(myX+45, myY+22.5, 20, 20);
      ellipse(myX+67.5, myY+22.5, 20, 20);
      ellipse(myX+22.5, myY+67.5, 20, 20);
      ellipse(myX+45, myY+67.5, 20, 20);
      ellipse(myX+67.5, myY+67.5, 20, 20);
    }
  }
}
