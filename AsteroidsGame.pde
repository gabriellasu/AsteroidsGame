Star [] sky = new Star [200];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
  rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(#000000);
  for (int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  for(int i = 0; i < rocks.size(); i++){
    rocks.get(i).show();
    rocks.get(i).move();
    float d = dist ((float)bob.getX(), (float)bob.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
      if (d < 10){
        rocks.remove(i); 
      }
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
