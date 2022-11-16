Spaceship bob = new Spaceship();
Star [] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
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
}
