import processing.serial.*;
import java.util.Collections;
Serial p;
ArrayList<Integer> cpt;
int tour = 0;
int min = 0,max = 0,moyenne = 0;
void setup()
{
  size(900,400);
  background(20);
  String namePort = new String(Serial.list()[0]);
  p = new Serial(this,namePort,9600);
  cpt = new ArrayList<>();
}

void draw()
{
  background(20);
  //rectMode(CENTER);
  //fill(255,0,0);
  //rect(10,390-min,40,390);
  //fill(0,255,0);
  //rect(100,390-moyenne,40,390);
  //fill(0,0,255);
  //rect(300,390-max,40,390);
  fill(255,0,0);
  arc(200,400,200,200,PI,PI*2);
  fill(0,255,0);
  arc(450,400,200,200,PI,PI*2);
  fill(0,0,255);
  arc(700,400,200,200,PI,PI*2);
  fill(0);
  translate(200-10+tour,0-tour);
  rotate(radians(tour));
  rect(200-10,300,20,400,20,20,0,0);
  if(p.available() > 0)
  {
    String data = p.readStringUntil('\n');
    if(data != null)
    {
       data = data.trim();
       int y = int(data);
       cpt.add(y);
    }
  }
  if(tour == 100)
  {
    min = Collections.min(cpt);
    max = Collections.max(cpt);
    moyenne = 0;
    for(int a:cpt)
    {
     moyenne += a;
    }
    moyenne = moyenne / cpt.size();
    println("min : ",min);
    println("moyenne : ",moyenne);
    println("max : ",max);
    tour = 0;
    cpt = new ArrayList<>();
  }
  //delay(10);
  tour++;
}
