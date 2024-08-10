import processing.serial.*;
Serial p;
int y = 100;
ArrayList<Integer> tab = new ArrayList<>();
Histo min;
Histo moyenne;
Histo max;
void setup()
{
  size(800,600);
  p = new Serial(this,Serial.list()[0],9600);
  background(255);
}

void draw()
{
  
  if(p.available() > 0)
  {
    String val = p.readStringUntil('\n');
    if(val != null)
    {
       tab.add(Integer.parseInt(val.trim()));
    }
  }
  if(tab.size() == 3)
  {
    background(255);
    int tour = 0;
    for(int a:tab)
    {
      println(a);
      if(tour == 0)
        min = new Histo(200+y,a);
      if(tour == 1)
        moyenne = new Histo(200+y,a);
      if(tour == 2)
        max = new Histo(200+y,a);
      tour++;
      y+=50;
    }
    y = 100;
    min.show();
    moyenne.show();
    max.show();
    tab.clear();
  }
}
