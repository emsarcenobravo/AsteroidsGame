class Asteroid extends Floater {
  public double rotSpeed;
  public Asteroid(){
   corners = 6;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = (int)(Math.random()*11)-11;
   yCorners[0] = -8;
   xCorners[1] = 7;
   yCorners[1] = -8;
   xCorners[2] = 13;
   yCorners[2] = 0;
   xCorners[3] = 6;
   yCorners[3] = 10;
   xCorners[4] = -11;
   yCorners[4] = 8;
   xCorners[5] = -5;
   yCorners[5] = 0;
   myColor = color(192, 192, 192);
   myCenterX = (int)(Math.random()*600);
   myCenterY = (int)(Math.random()*600);
   myXspeed = (Math.random()*2); 
   myYspeed = (Math.random()*4)-2; 
   myPointDirection = 0;
   rotSpeed = (int)(Math.random()*10)-5;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public void setCenterX(double xc){
    myCenterX = xc;
    }
  public void setCenterY(double yc){
    myCenterY = yc;
    }
  public float  getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
  }
}
