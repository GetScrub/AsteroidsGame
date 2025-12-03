class Bullet extends Floater{
  Bullet(Spaceship s){
    myCenterX= s.getX();
    myXspeed=s.getXSpeed();
    myCenterY=s.getY();
    myYspeed=s.getYSpeed();
    myPointDirection=s.getRotation();
    accelerate(6);
    myColor = 0;
  }
  //@Override
  public void show(){
    fill(#FFFFFF);   
    stroke(myColor);  
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  void setX(double n){
    myCenterX = n;
  }
  void setXSpeed(double n){
    myXspeed = n;
  }
  void setY(double n){
    myCenterY = n;
  }
  void setYSpeed(double n){
    myYspeed = n;
  }
  void setRotation(double n){
    myPointDirection = n;
  }
  double getX(){
    return myCenterX;
  }
  double getXSpeed(){
    return myXspeed;
  }
  double getY(){
    return myCenterY;
  }
  double getYSpeed(){
    return myYspeed;
  }
  double getRotation(){
    return myPointDirection;
  }
}
