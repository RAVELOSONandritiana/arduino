import processing.serial.*;
class Levier{
   private int alt;
   private int y;
   private Serial p;
   Levier(Serial p)
   {
     this.y = height-20;
     this.p = p;
   }
   
   public void setAlt(int alt)
   {
      this.alt = alt;
   }
   
   public void draw()
   {
     fill(0,0,255);
     rect(5,height-20-20,20,2);
     rect(5,height-50-20,20,2);
     rect(5,height-150-20,20,2);
     fill(0,255,0);
     noStroke();
     rect(20,20,50,360);
     fill(255,0,0);
     noStroke();
     rect(20,this.y,50,height-10-this.y);
     fill(0,0,200);
     textSize(20);
     int o = abs(this.y-380);
     if(o > 20 && o <= 50 && this.alt != 1)
     {
       this.alt = 1;
       p.write(""+this.alt);
     }
     else if(o > 50 && o <= 150 && this.alt != 2)
     {
        this.alt = 2;
        p.write(""+this.alt);
     }
     else if(o > 150 && this.alt != 3)
     {
        this.alt = 3;
        p.write(""+this.alt);
     }
     else if(this.y >= height-20-20 && this.alt != 0)
     {
       this.alt = 0;
        p.write(""+this.alt);
     }
     text("Nb : "+this.alt,100,height/2);

   }
   
   public void mousePressed()
   {
     if(mouseButton == LEFT && collision() == true)
     {
      this.y = mouseY < height-20 ? mouseY: height-20;
     }
   }
   
   public boolean collision()
   {
    int x = mouseX;
    int y = mouseY;
    return ( x <= 100 && x >= 50 && y > 10)?true:false;
   }
}
