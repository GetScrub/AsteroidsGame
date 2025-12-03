//your variable declarations here

Spaceship s;
ArrayList<Star> mm = new ArrayList<Star>();
ArrayList<Asteroid> uh = new ArrayList<Asteroid>();
ArrayList<Bullet> m = new ArrayList<Bullet>();
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
  
  for(int i =0; i< mm.size(); i++){
    mm.get(i).show();
  }
  
    for(int i =0; i< m.size(); i++){
      Bullet ruh = m.get(i);
      ruh.move();
      ruh.show();
        for(int j =0; j< uh.size(); j++){
        double g = uh.get(j).getX();
        double z = uh.get(j).getY();
        if(dist((float)g,(float)z,(float)s.getX(),(float)s.getY())<20){
          uh.remove(j);
        }
        if(dist((float)g,(float)z,(float)ruh.getX(),(float)ruh.getY())<10){
          uh.remove(j);
          m.remove(i);
        }
      }
    }
    for(int i =0; i< uh.size(); i++){
      uh.get(i).move();
      uh.get(i).show();
      if(dist((float)uh.get(i).getX(),(float)uh.get(i).getY(),(float)s.getX(),(float)s.getY())<20){
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
  }else if(key=='q'||key=='e'){
    m.add(new Bullet(s));
  }
}
