class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
      xCorners = new int []{-10, 10, 15, 10, -10, -15};
      yCorners = new int []{10, 10, 0, -10, -10, 0};
    myCenterX = (int)(Math.random()*500) + 1;    
    myCenterY = (int)(Math.random()*500) + 1;
    rotSpeed = (Math.random()*5)-2;
    myColor = 200;
    myXspeed = (int)(Math.random()*11)-5;
    myYspeed = (int)(Math.random()*11)-5;
    myPointDirection = 1;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX() {
    return myCenterX;
}
  public double getY() {
    return myCenterY;
  }
}
