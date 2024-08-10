class Histo
{
 private int y;
 private int x;
 
 public Histo(int x,int y)
 {
   this.x = x;
   this.y = y;  
 }
 
 public void show()
 {
  fill(255,0,0);
  rect(this.x,this.y/10,20,height);

 }
  
}
