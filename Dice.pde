int total; 

void setup()
{
  size(500, 500);
  textAlign(CENTER);
  noLoop();
}
void draw()
{
  int numDots = 0;
  background(255, 169, 88);
  //add dice shado
  for (int y = 80; y < 390; y+=110) {
    for (int x = 100; x < 390; x = x + 110) {
      Die mixx = new Die (x, y);
      mixx.show();
      if (mixx.dice == 1)
        numDots++;
      else if (mixx.dice == 2)
        numDots+=2;
      else if (mixx.dice == 3)
        numDots+=3;
      else if (mixx.dice == 4)
        numDots+=4;
      else if (mixx.dice == 5)
        numDots+=5;
      else if (mixx.dice == 6)
        numDots+=6;
    }
  }
  textSize(20);
  text("Total of Dots: " + numDots, 250, 440);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dice;
  int myX, myY;

  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    dice = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 80, 80, 20);
    fill(0);
    if (dice == 1) {
      ellipse(myX+40, myY+40, 13, 13);
    }
    if (dice == 2) {
      ellipse(myX+27, myY+40, 13, 13);
      ellipse(myX+53, myY+40, 13, 13);
    }
    if (dice == 3) {
      ellipse(myX+20, myY+20, 13, 13);  
      ellipse(myX+40, myY+40, 13, 13);  
      ellipse(myX+60, myY+60, 13, 13);
    }
    if (dice == 4) {
      ellipse(myX+27, myY+25, 13, 13);
      ellipse(myX+53, myY+25, 13, 13);
      ellipse(myX+27, myY+55, 13, 13);
      ellipse(myX+53, myY+55, 13, 13);
    }
    if (dice == 5) {
      ellipse(myX+20, myY+20, 13, 13); //tl 
      ellipse(myX+40, myY+40, 13, 13); //mid
      ellipse(myX+60, myY+60, 13, 13); //br
      ellipse(myX+20, myY+60, 13, 13); //lb 
      ellipse(myX+60, myY+20, 13, 13); //tr
    }
    if (dice == 6) {
      ellipse(myX+25, myY+23, 13, 13);
      ellipse(myX+55, myY+23, 13, 13);
      ellipse(myX+25, myY+40, 13, 13);
      ellipse(myX+55, myY+40, 13, 13);
      ellipse(myX+25, myY+57, 13, 13);
      ellipse(myX+55, myY+57, 13, 13);
    }
  } //show
} //class

void shado(int x, int y) {
  noStroke();
  fill(235, 156, 82);
  rect(x, y, 80, 80, 20);
}
