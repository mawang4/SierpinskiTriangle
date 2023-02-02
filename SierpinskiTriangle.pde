public void setup()
{
  size(500, 500); 
  background(250, 232, 246);
}
public void draw()
{
  sierpinski(23, 40, 450);  
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 25) {
    triangle(x + len/2, y - len, x, y, len + x, y); //top, left, right
  } else {
    fill((float)Math.random() * 256, (float)Math.random()*256, (float)Math.random()*256);
    sierpinski(x, y, len/2); 
    sierpinski(x + len/2, y, len/2); 
    sierpinski(x + len/4, y + len/2, len/2); 
  }
}
