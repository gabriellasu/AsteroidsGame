class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    corners = 5;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = 0;
    yCorners[0] = -15;
    xCorners[1] =12;
    yCorners[1] = 0;
    xCorners[2] = 6;
    yCorners[2] = 15;
    xCorners[3] = -6;
    yCorners[3] = 15;
    xCorners[4] = -12;
    yCorners[4] = 0;
    myColor = (#eeeeee);   
    myCenterX = Math.random() * 500; 
    myCenterY = Math.random()* 500; 
    myXspeed = (Math.random() * 3) + 1;
    myYspeed = (Math.random() * 3) + 1;
    myPointDirection = 0;
    rotSpeed = (Math.random() * 3) + 1;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public void show(){
    noFill();
    super.show();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
