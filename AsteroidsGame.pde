Star [] sky = new Star [200];
Spaceship bob = new Spaceship();
ArrayList <Bullet> bill = new ArrayList <Bullet>();
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
  }
  bob.show();
  bob.move();
  for(int i = 0; i < bill.size(); i++){
    bill.get(i).show();
    bill.get(i).move();
  }
  for(int i = 0; i < rocks.size(); i++){
    
    for(int j = 0; j < bill.size(); j++){
      float d = dist ((float)bill.get(j).getX(), (float)bill.get(j).getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
      if(d <= 20){
      rocks.remove(rocks.get(i));
      bill.remove(bill.get(j));
      break;
      }
    }
  }
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
  if (key == 'f'){
    bill.add(new Bullet());
  }
}
