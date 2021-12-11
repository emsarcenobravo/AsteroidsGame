class Star //note that this class does NOT extend Floater
{
  int myX, myY, myColor;
  Star(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    myColor = color(0,0,255); 
  }
  void show(){
    strokeWeight(1);
    stroke(myColor);
    fill(255);
    ellipse(myX, myY, 5, 5);
  }
}

