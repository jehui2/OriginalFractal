int size = 200;
public void setup()
{
  size(400, 400);
}
public void draw()
{
  myFractal(200, 200, 350);
}
public void myFractal(float x, float y, int z)
{
  strokeWeight(5);
  stroke(200, x/2, 255);
  ellipse(x, y, z, z);
  
  if(z > size) {
    myFractal(x, y - z/4, z/2);
    myFractal(x, y + z/4, z/2);
    myFractal(x - z/4, y, z/2);
    myFractal(x + z/4, y, z/2);
  }
}
void mouseClicked() 
{
  if(size > 60)
    size = size - 10;
  else
    size = 250;
  }
