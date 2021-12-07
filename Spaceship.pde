class Spaceship extends Floater  
{   
    //your code here
     public Spaceship(){
     corners = 16;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = 10;
     yCorners[0] = 0;
     xCorners[1] = 7;
     yCorners[1] = -3;
     xCorners[2] = -2;
     yCorners[2] = -3;
     xCorners[3] = -5;
     yCorners[3] = -6;
     xCorners[4] = -10;
     yCorners[4] = -6;
     xCorners[5] = -7;
     yCorners[5] = -3;
     xCorners[6] = -10;
     yCorners[6] = -3;
     xCorners[7] = -8;
     yCorners[7] = -1;
     xCorners[8] = -10;
     yCorners[8] = 0;
     xCorners[9] = -8;
     yCorners[9] = 1;
     xCorners[10] = -10;
     yCorners[10] = 3;
     xCorners[11] = -7;
     yCorners[11] = 3;
     xCorners[12] = -10;
     yCorners[12] = 6;
     xCorners[13] = -5;
     yCorners[13] = 6;
     xCorners[14] = -2;
     yCorners[14] = 3;
     xCorners[15] = 7;
     yCorners[15] = 3;
     myColor = (#eeeeee);   
     myCenterX = 250; 
     myCenterY = 250; 
     myXspeed = 0; 
     myYspeed = 0; 
     myPointDirection = 0; 
    }
    public void setXspeed(double x){
      myXspeed = x;
    }
    public void setYspeed(double y){
      myYspeed = y;
    }
    public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random() * 500);
      myCenterY = (int)(Math.random() * 500);
      myPointDirection = (int)(Math.random() * 360);
    }
    public void show(){
      fill(#eeeeee);
      super.show();
    }
    public double getX(){
      return myCenterX;
    }
    public double getY(){
      return myCenterY;
    }
}
