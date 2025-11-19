//your variable declarations here

Spaceship s;
ArrayList<Star> mm = new ArrayList<Star>();
ArrayList<Asteroid> uh = new ArrayList<Asteroid>();
public void setup() 
{
  size(500,500);
  s = new Spaceship();
  double g = Math.random()*50;
  for(int i = 0; i < g; i++){
    mm.add(new Star());
  }
  for(int i = 0; i < 5; i++){
    uh.add(new Asteroid());
  }
  for(int i =0; i< 5; i++){
    uh.get(i).accelerate(Math.random()*3);
  }
}
public void draw() 
{
  background(255);
  s.move();
  s.show();
  for(int i =0; i< uh.size(); i++){
    uh.get(i).move();
    uh.get(i).show();
  }
  for(int i =0; i< mm.size(); i++){
    mm.get(i).show();
  }
  for(int i =0; i< uh.size(); i++){
    double g = uh.get(i).getX();
    double m = uh.get(i).getY();
    if(dist((float)g,(float)m,(float)s.getX(),(float)s.getY())<20){
      uh.remove(i);
    }
  }
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
