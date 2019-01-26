public void setup()
{
  size(600,600);
  background(0);
}

public void draw()
{
  sierpinski(80,480,430);
}

public void sierpinski(int x, int y, int len) 
{
  fill((int)(Math.random()*255+50), (int)(Math.random()*255+50), (int)(Math.random()*255+50));
  noStroke();
  
  if(len <= 20)
  {
    triangle(x,y,x+len/2,y-len,x+len,y);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
