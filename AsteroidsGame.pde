//your variable declarations here

Spaceship s;
ArrayList<Star> starArray = new ArrayList<Star>();
ArrayList<Asteroid> asteroidArray = new ArrayList<Asteroid>();
ArrayList<Bullet>bulletArray = new ArrayList<Bullet>();
public void setup() 
{
  size(500,500);
  s = new Spaceship();
  double g = Math.random()*51;
  for(int i = 0; i < g; i++){
    starArray.add(new Star());
  }
  for(int i = 0; i < 5; i++){
    asteroidArray.add(new Asteroid());
  }
  for(int i = 0; i < 5; i++){
    asteroidArray.get(i).accelerate(Math.random()*3);
  }
}
public void draw() 
{
  background(255);
  
  s.move();
  s.show();
  
  for(int i = 0; i < starArray.size(); i++){
    starArray.get(i).show();
  }
  
    for(int i = 0; i < bulletArray.size(); i++){
      Bullet Annoyance = bulletArray.get(i);
      Annoyance.move();
      Annoyance.show();
        for(int j = 0; j < asteroidArray.size(); j++){
        double g = asteroidArray.get(j).getX();
        double z = asteroidArray.get(j).getY();
        if(dist((float)g, (float)z, (float)s.getX(), (float)s.getY()) < 20){
          asteroidArray.remove(j);
          break;
        }
        if(dist((float)g, (float)z, (float)Annoyance.getX(), (float)Annoyance.getY()) < 10){
          asteroidArray.remove(j);
         bulletArray.remove(i);
          //break;
        }
      }
    }
    for(int i = 0; i < asteroidArray.size(); i++){
      asteroidArray.get(i).move();
      asteroidArray.get(i).show();
      if(dist((float)asteroidArray.get(i).getX(), (float)asteroidArray.get(i).getY(), (float)s.getX(), (float)s.getY()) < 20){
        asteroidArray.remove(i);
      }
  }
}

public void keyPressed(){
  if(key == 'h'){
    s.setX(Math.random()*500);
    s.setY(Math.random()*500);
    s.setXSpeed(0);
    s.setYSpeed(0);
    s.setRotation(Math.random()*360);
  }else if(key == 'w'){
    s.accelerate(1);
  }else if(key == 'a'){
    s.turn(320);
  }else if(key == 's'){
    s.accelerate(-1);
  }else if(key == 'd'){
    s.turn(40);
  }else if(key == 'q'){
   bulletArray.add(new Bullet(s));
  }else if(key == 'e'){
   bulletArray.add(new Bullet(s));
  }
}
