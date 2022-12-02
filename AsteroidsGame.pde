Spaceship bob = new Spaceship();
Star [] nightSky = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for (int i = 0; i <= 10; i++){
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  // stars
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  
  // spaceship
  if(keyPressed){
    if (key == 'a'|| key == 'A'){
      bob.turn(10);
    } else if (key == 'w'|| key == 'W'){
      bob.accelerate(0.1);
    } else if (key == 's'|| key == 'S'){
      bob.accelerate(-0.1);
    } else if (key == 'd'|| key == 'D'){
      bob.turn(-10);
    } else if (key == 'h'|| key == 'H'){
      bob.hyperspace();
    }
  }
  bob.move();
  bob.show();
  
  // asteroids
  // System.out.println(rocks.size());
  for (int i = 0; i < rocks.size(); i++){
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((float)bob.getX(),(float)bob.getY(),(float)rocks.get(i).getX(),(float)rocks.get(i).getY());
    // System.out.println(rocks.get(i));
    if (d < 20){
      rocks.remove(i);
    }
  }
}
