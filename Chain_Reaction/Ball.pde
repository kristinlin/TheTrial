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
    c = color((int) random(255), (int) random(255), (int) random(255));
  }
  
  void display(){
    fill(c);
    ellipse(x,y,20,20);
  }
}