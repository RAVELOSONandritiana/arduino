class Diag{
  private int y;
  private int x;
  private int a;
  private int b;
  private int c;
  Diag(int x,int y,int a,int b,int c)
  {
    this.x = x;
    this.y = y;
    this.a = a;
    this.b = b;
    this.c = c;
  }

  public void draw()
  {
    fill(this.a,this.b,this.c);
    strokeWeight(0);
    rect(this.x+10,560-(this.y*500)/1024,40,(this.y*500)/1024+5);
    this.texte();
  }
  
  private void texte()
  {
    fill(this.a,this.b,this.c);
    textSize(20);
    text(""+(this.y*100/1024)+"%",this.x+20,580+10);
  }
}
