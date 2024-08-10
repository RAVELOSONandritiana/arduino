class Board{
 private int x;
 private int y;
 private int a,b,c;
 private int val;
 Board(int x,int y,int a,int b,int c)
 {
   this.x = x;
   this.y = y;
   this.a = a;
   this.b = b;
   this.c = c;
 }
 
 public void setVal(int val)
 {
   this.val = val;
 }
 
 public void draw()
 {
  strokeWeight(5);
  stroke(this.a,this.b,this.c);
  noFill();
  arc(this.x,this.y,200,200,PI,2*PI);
  line(this.x-90*cos(radians(this.val)),this.y-90*sin(radians(this.val)),this.x,this.y);
  this.texte();
 }
 
  private void texte()
  {
    fill(this.a,this.b,this.c);
    textSize(20);
    text(""+(this.val)+"deg",this.x-10,this.y+20);
  }
}
