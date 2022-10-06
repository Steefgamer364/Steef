int radius = 10, directionX = 1, directionY = 0;
float x=20, y=20, speed=0.5;

void setup()
{
  size(500, 500);
  ellipseMode(RADIUS);
}
void draw()
{
  background(255,255,255);

  x=x+speed*directionX;
  y=y+speed*directionY; 
  // check boundaries
  if ((x>width-radius) || (x<radius))
  {   
    directionX=-directionX;
  }
  if ((y>height-radius) || (y<radius))
  {   
    directionY=-directionY;
  } 
  // draw
  // if(direction==1)
  // rect(x, y, 50, 50);
  fill (color(0, 0, 0)); 
  ellipse (x, y, radius, radius);    
  fill (color(0, 0, 0)); 
  ellipse (x-4, y-4, 2, 2);  
}

void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == LEFT)
    {
      //if (directionX>0) { 
      directionX=-1;
      directionY=0;
      //}
    }
    else if (keyCode == RIGHT)
    {
      //if (directionX<0) {  
      directionX=1;
      directionY=0;
      //}
    }
    else if (keyCode == UP)
    {
      //if (directionY<0) {
      directionY=-1;
      directionX=0;
      //}
    }
    else if (keyCode == DOWN)
    {
      //if (directionY<0) { 
      directionY=1;
      directionX=0;
      //}
    }
  }
}
// =========================================================
