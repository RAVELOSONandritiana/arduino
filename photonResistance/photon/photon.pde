import processing.serial.*;
ArrayList<Integer> tab = new ArrayList<>();
Serial p;
String val;
Diag min,moyenne,max;
Board minB = new Board(450,150,0,255,0);
Board moyB = new Board(450,350,0,0,255);
Board maxB = new Board(450,550,255,0,0);
int ext = 0;
Manip man = new Manip(tab);
void setup()
{
  size(600,600);
  p = new Serial(this,Serial.list()[0],9600);
  background(0);
}

void draw()
{
  background(0);
  if(ext == 1)
  {
    min.draw();
    moyenne.draw();
    max.draw();
    minB.draw();
    moyB.draw();
    maxB.draw();
  }
  if(p.available() > 0)
  {
    String val = p.readStringUntil('\n');
    if(val != null && val.trim().matches("[0-9]+"))
    {
       tab.add(Integer.parseInt(val.trim()));
    }
  }
  if(tab.size() > 2)
  {
    man = new Manip(tab);
    min = new Diag(0,man.getMin(),0,255,0);
    moyenne = new Diag(100,man.getMoyenne(),0,0,255);
    max = new Diag(200,man.getMax(),255,0,0);
    
    minB.setVal((man.getMin() * 180) / 1024); 
    moyB.setVal((man.getMoyenne() * 180) / 1024);
    maxB.setVal((man.getMax() * 180) / 1024);

    ext = 1;
    if(tab.size() > 50)
    {
      tab.clear();
    }
  }
}
