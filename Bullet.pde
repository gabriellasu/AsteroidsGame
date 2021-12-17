
class Bullet extends Floater{
  public Bullet(){
     myCenterX = bob.getX();
    myCenterY = bob.getY(); 
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();   
    myPointDirection = bob.getDirection();
    accelerate(6);
  }
  public void show(){
    fill(#8794E3);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
   public double getX(){
      return myCenterX;
    }
    public double getY(){
      return myCenterY;
    }
}
