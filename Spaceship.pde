class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      xCorners[3] = -2;
      yCorners[3] = 0;
      myColor = color(255);
      myCenterX = 300.0;
      myCenterY = 300.0;
      myXspeed = 5.0; 
      myYspeed = 0.0; 
      myPointDirection = 0.0;
    }
    public void setXspeed(double x){
      myXspeed = x;
    }
    public void setYspeed(double y){
      myYspeed = y;
    }
    public void setCenterX(double xc){
      myCenterX = xc;
    }
    public void setCenterY(double yc){
      myCenterY = yc;
    }
    public void setPointDirection(double dir){
      myPointDirection = dir;
    }
    public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    
    if(keyPressed){
      if(key == ' '){
        stroke(255);
        line(-15,0,-22,0);
        line(-15,5,-22,7);
        line(-15,-5,-22,-7);
    }
    }
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
} 


