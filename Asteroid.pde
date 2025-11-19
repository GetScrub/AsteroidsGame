class Asteroid extends Floater{
  private double rotation;
  public void setRotation(double r){
    rotation = r;
  }
  public double getRotation(){
    return rotation;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  Asteroid(){
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    myColor = #000000;
    myCenterX = Math.random()*100;
    myCenterY = Math.random()*100;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*360;
    if(Math.random()<0.5){
      rotation = Math.random()*30;
    }else{
      rotation = 0 - Math.random()*30;
    }
  }
  @Override
  public void move(){
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
    
    //Rotate
    turn(rotation);
    
    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
}
