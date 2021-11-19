Star [] sky = new Star [200];
Spaceship bob = new Spaceship();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(#000000);
  for (int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  bob.show();
  bob.move();
  
}
public void keyPressed(){
  if (key == 'd'){
    bob.turn(10);
  }
  if (key == 'a'){
    bob.turn(-10);
  }
  if (key == 'w'){
    bob.accelerate(5);
  }
  if (key == 's'){
    bob.hyperspace();
  }
}
