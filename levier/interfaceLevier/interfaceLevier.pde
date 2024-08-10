import processing.serial.*;
Serial p;
Levier lev;
void setup()
{
  size(200,400);
  p = new Serial(this,Serial.list()[0],9600);
  lev = new Levier(p);
}

void draw()
{
  background(255);
  lev.draw();
  if(mousePressed == true)
  {
    lev.mousePressed();
  }
}
