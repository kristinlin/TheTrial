class Ball{
    public int r  ;
    public float x;
    public float y ;
    public float dx ;
    public float dy;
    public color c;
  Ball(){
    r = 10; 
    x = random((width - r) + r/2);
    y = random((height - r) + r/2);
    dx = random(10) - 5;
    dy = random(10) - 5;
  }
  void display(){
    fill(250);
    ellipse(x,y,10,10);
  }
}