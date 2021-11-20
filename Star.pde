class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  Star(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    myColor = color(0,0,255); 
  }
  public void show(){
    stroke(myColor);
    ellipse(myX, myY, 5, 5);
  }
}
