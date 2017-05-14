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
  
  void move(){
    if(abs(x-width) <= 5 || abs(x) <= 5){
      dx = -dx;
    }
    if(abs(y-height) <= 5 || abs(y) <= 5){
      dy = -dy;
    }
    x += dx;
    y += dy;
  }
}
