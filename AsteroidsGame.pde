Spaceship s = new Spaceship();
Star sue = new Star();
Star[] sues;
public void setup() 
{
  size(600,600);
  sues = new Star[100];
  for(int i = 0;  i < sues.length; i++){
    sues[i] = new Star();
  }
}
public void draw() 
{
 background(0);
   for(int i = 0;  i < sues.length; i++){
     sues[i].show();
   }
  sue.show();
  s.move();
  s.show();
}
public void keyPressed(){
  if(key == ' '){
    s.accelerate(0.4);
}
  if(keyCode == LEFT){
    s.turn(-10);
}
  if(keyCode == RIGHT){
    s.turn(10);
  }
  if(key == 'h' || key == 'H'){
    s.setXspeed(0);
    s.setYspeed(0); 
    s.setCenterX(Math.random()*600.0);
    s.setCenterY(Math.random()*600.0);
    s.setPointDirection(Math.random()*360.0);
  }
}
