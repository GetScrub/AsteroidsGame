//your variable declarations here

Spaceship s;
public void setup() 
{
  size(500,500);
  s = new Spaceship();
  //your code here
}
public void draw() 
{
  background(255);
  s.move();
  s.show();
  //your code here
}

public void keyPressed(){
  if(key=='h'){
    s.setX(Math.random()*500);
    s.setY(Math.random()*500);
    s.setXSpeed(0);
    s.setYSpeed(0);
    s.setRotation(Math.random()*360);
  }else if(key=='w'){
    s.accelerate(1);
  }else if(key=='a'){
    s.turn(320);
  }else if(key=='s'){
    s.accelerate(-1);
  }else if(key=='d'){
    s.turn(40);
  }
}
