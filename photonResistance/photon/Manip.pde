class Manip{
   private ArrayList<Integer> tab;
   
   Manip(ArrayList<Integer> tab)
   {
     this.tab = tab;
   }
   
  public int getMin()
  {
    int min = tab.get(0);
    for(int i = 1;i < this.tab.size();i++)
    {
      min = tab.get(i) < min ? tab.get(i) : min;
    }
    return min;
  }
  
  public int getMax()
  {
    int max = tab.get(0);
    for(int i = 1;i < this.tab.size();i++)
    {
      max = tab.get(i) > max ? tab.get(i) : max;
    }
    return max;
  }
  
  public int getMoyenne()
  {
    return (this.getMin() + this.getMax()) / 2;
  }
}
