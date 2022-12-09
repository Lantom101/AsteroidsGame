Spaceship bob = new Spaceship();
Star [] nightSky = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
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
    } else if (key == ' ') {
      shots.add(new Bullet(bob));
    }
  }
  bob.move();
  bob.show();
  for (int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
    float shotX = (float) shots.get(i).getX();
    float shotY = (float) shots.get(i).getY();
    if (shotX > 450 || shotX < 50 || shotY > 490 || shotY < 50){
      shots.remove(i);
    } else {
      for (int j = 0; j < rocks.size(); j++){
        float di = dist(shotX, shotY,(float)rocks.get(j).getX(),(float)rocks.get(j).getY());
        if (di < 10) {
          rocks.remove(j);
          shots.remove(i);
        }
      }
    }
  }
  
  // asteroids
  // System.out.println(rocks.size());
  for (int i = 0; i < rocks.size(); i++){
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((float)bob.getX(),(float)bob.getY(),(float)rocks.get(i).getX(),(float)rocks.get(i).getY());
    // System.out.println(rocks.get(i));
    if (d < 10){
      rocks.remove(i);
    }
    
  }
}
