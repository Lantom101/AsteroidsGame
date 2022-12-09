class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 11;
      xCorners = new int []{-16, -8, 0, 8, 16, 8, 0, -8, -16, -8, -8};
      yCorners = new int []{12, 12, 4, 4, 0, -4, -4, -12, -12, -4, 4};
      myColor = 255;
      myCenterX = 250;
      myCenterY = 250; 
      myXspeed = 0; 
      myYspeed = 0;
      myPointDirection = 0;
    }
    public void hyperspace(){
      bob.setXspeed(0);
      bob.setYspeed(0); 
      myPointDirection = (int)(Math.random()*360);
      myCenterX = (int)(Math.random()*500);
      myCenterY = (int)(Math.random()*500);
    }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
