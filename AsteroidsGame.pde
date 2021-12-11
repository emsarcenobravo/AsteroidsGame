Spaceship s = new Spaceship();
Spaceship[] spaceships;
Star sue = new Star();
Star[] sues;
ArrayList<Asteroid>theList = new ArrayList<Asteroid>();
Asteroid astros = new Asteroid();
ArrayList <Bullet> theList2 = new ArrayList<Bullet>();
Bullet bullets = new Bullet(s);

public void setup() 
{
  size(600, 600);
  frameRate(60);
  sues = new Star[150];
  for (int i = 0; i < sues.length; i++) {
    sues[i] = new Star();
  }
  spaceships = new Spaceship[6];
  for (int i = 0; i < spaceships.length; i++) {
    spaceships[0] = new Spaceship(320,300);
    spaceships[1] = new Spaceship(280,320);
    spaceships[2] = new Spaceship(280,280);
    spaceships[3] = new Spaceship(240,340);
    spaceships[4] = new Spaceship(240,300);
    spaceships[5] = new Spaceship(240,260);
  }
  for (int a = 0; a < 20; a++) {
    Asteroid astros = new Asteroid();
    theList.add(astros);
  }
  for (int b = 0; b < theList2.size(); b++) {
    Bullet bullets = new Bullet(s);
    theList2.add(bullets);
  }
}


public void draw() 
{
  background(0);
  for (int i = 0; i < sues.length; i++) {
    sues[i].show();
  }
  for (int i = 0; i < spaceships.length; i++) {
    spaceships[i]. move();
    spaceships[i].show();
  }

  for (int a = 0; a < theList.size(); a++) {
    theList.get(a).move(); 
    theList.get(a).show(); 
    for (int i = 0; i < spaceships.length; i++) {
      float d = dist(spaceships[i].getX(), spaceships[i].getY(), theList.get(a).getX(), theList.get(a).getY()); 
      if (d < 20) {
        theList.remove(a);
        break;
      }
    }
  }
  for (int b = 0; b < theList2.size(); b++) {
    theList2.get(b).move();
    theList2.get(b).show();
      if (theList2.get(b).getX() > 590) {
        theList2.remove(b);
        break;
      }
      if (theList2.get(b).getY() > 590) {
        theList2.remove(b);
        break;
      }
   for (int a = 0; a < theList.size(); a++) {
     float d = dist(theList.get(a).getX(), theList.get(a).getY(), theList2.get(b).getX(), theList2.get(b).getY()); 
      if (d < 20) {
        theList.remove(a);
        break;
      }
   } 

//   for(int i = 0; i < spaceships.length; i++){
 //    if(theList2.get(b).getX()  == (spaceships[i].getX()) + 50) {
  //     theList2.remove(b);
  //      break;
//     }
 //     if(theList2.get(b).getY() == (spaceships[i].getY()) + 50) {
  //     theList2.remove(b);
  //      break;
   //   }
//    }
  }
  

    for (int i = 0; i < spaceships.length; i++) {
      spaceships[i].move();
      spaceships[i].show();
    }
    sue.show();
    astros.move();
    astros.show();
  }

  public void keyPressed() {
    for (int i = 0; i < spaceships.length; i++) {
      if (key == ' ') {
        spaceships[i].accelerate(0.4);
      }
      if (key == 'x' || key == 'X') {
        spaceships[i].accelerate(-0.4);
      }
      if (keyCode == LEFT) {
        spaceships[i].turn(-10);
      }
      if (keyCode == RIGHT) {
        spaceships[i].turn(10);
      }
      if (key == 'h' || key == 'H') {
        spaceships[i].myXspeed = 0;
        spaceships[i].myYspeed = 0;
        spaceships[0].myPointDirection = (int)(Math.random()*360);
        spaceships[0].myCenterX = (Math.random()*500);
        spaceships[0].myCenterY = (Math.random()*500); 
        spaceships[1].myCenterX = spaceships[0].myCenterX + 40;
        spaceships[1].myCenterY = spaceships[0].myCenterY + 20;
        spaceships[1].myPointDirection = spaceships[0].myPointDirection;
        spaceships[2].myCenterX = spaceships[0].myCenterX + 40;
        spaceships[2].myCenterY = spaceships[0].myCenterY - 20;
        spaceships[2].myPointDirection = spaceships[0].myPointDirection;
        spaceships[3].myCenterX = spaceships[0].myCenterX + 80;
        spaceships[3].myCenterY = spaceships[0].myCenterY + 40;
        spaceships[3].myPointDirection = spaceships[0].myPointDirection;
        spaceships[4].myCenterX = spaceships[0].myCenterX + 80;
        spaceships[4].myCenterY = spaceships[0].myCenterY - 40; 
        spaceships[4].myPointDirection = spaceships[0].myPointDirection;
        spaceships[5].myCenterX = spaceships[0].myCenterX + 80;
        spaceships[5].myCenterY = spaceships[0].myCenterY; 
        spaceships[5].myPointDirection = spaceships[0].myPointDirection;
      }
      if (key == 'b' || key == 'B') {
        theList2.add(new Bullet(spaceships[i]));
      }
    }
  }
