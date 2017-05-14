class Ball{ 
  
    public int r  ;
    public float x;
    public float y ;
    public float dx ;
    public float dy;
    public color c;
    public boolean grow;
    public boolean shrink;
    public boolean dead;
  
  Ball(){
    r = 20; 
    x = random((width - r) + r/2);
    y = random((height - r) + r/2);
    dx = random(10) - 5;
    dy = random(10) - 5;
    c = color((int) random(255), (int) random(255), (int) random(255));
    grow = false;
    dead = false;
    shrink = false;
  }
  
  void display(){
    fill(c);
    ellipse(x,y,r,r);
  }
  
  void move(){
    if(dead || grow || shrink){return;}//stops moving
    if(abs(x-width) <= 5 || abs(x) <= 5){
      dx = -dx;
    }
    if(abs(y-height) <= 5 || abs(y) <= 5){
      dy = -dy;
    }
    x += dx;
    y += dy;
  }
  
  void growAndShrink(){
    if(dead){return;}
    if(grow){
      if(r < 60){
        r += 1;
      }
      else{grow = false; shrink = true;}
    }//end of grow if
    else if(shrink){
      if(r > 0){
        r -= 1;
      }
      else{shrink = false; dead = true; x = width + 20; y= height + 20;}//Ball persumed dead
    }//end of shrink else if
  }
}
