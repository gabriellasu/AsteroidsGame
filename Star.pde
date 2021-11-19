class Star 
{
  private int myX, myY, mySize;
  public Star(){
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
    mySize = (int)(Math.random() * 5);
  }
  public void show(){
    fill(255);
    ellipse(myX, myY, mySize , mySize);
  }
}
