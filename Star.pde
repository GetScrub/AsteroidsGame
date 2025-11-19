class Star //note that this class does NOT extend Floater
{
  private double myX, myY;
  private int myCol;
  Star(){
    myX = Math.random()*501;
    myY = Math.random()*501;
    myCol = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  public void show(){
    noStroke();
    fill(myCol);
    ellipse((float)myX,(float)myY,5,5);
  }
  //your code here
}
