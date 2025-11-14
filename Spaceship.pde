class Spaceship extends Floater  
{   
  Spaceship(){
    corners = 4;
    xCorners = new int[]{-8,16,-8,-2};
    yCorners = new int[]{-8,0,8,0};
    myColor = #000000;
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
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
