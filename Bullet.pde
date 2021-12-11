class Bullet extends Floater{
  public Bullet(Spaceship spaceships){
    myCenterX = spaceships.getX();
    myCenterY = spaceships.getY();
    myXspeed = spaceships.getXSpeed();
    myYspeed = spaceships.getYSpeed();
    myPointDirection = spaceships.getPointDirection();
    accelerate(6.0);
}

public void show(){
  fill(255, 0, 0);
  noStroke();
  ellipse((float)myCenterX, (float)myCenterY, 5, 5);
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
