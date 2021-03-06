Ball[] _balls;
boolean chainReaction;
boolean mouse;

void setup() {
 size(640, 360);
 noStroke();
 frameRate(30);
 chainReaction = false;
 mouse = false;
 _balls = new Ball[25];
 for (int x = 0; x < _balls.length; x++) {
  _balls[x] = new Ball();   
 }
}

void draw() {
  background(0);
  for (Ball b: _balls) {
    b.move();
    b.display();   
  }
  if(mousePressed && !mouse){
    mouse = true;
    react();
  }//end of mousePressed if
  if(chainReaction){
    othersReact();
   }//end of chainReaction if
}

void react() {
 for(Ball b: _balls){
    if(dist(mouseX, mouseY, b.x, b.y) <= b.r){
      chainReaction = true;
      b.grow = true;
    }//end of if
  }//end of for
}

void othersReact() {
  for(Ball b: _balls){
    if(b.grow || b.shrink){
      for(Ball c : _balls){
        if(dist(c.x, c.y, b.x, b.y) <= (c.r + b.r)/2 && (!c.shrink &&!c.grow)){c.grow = true;}
      }//end of for
     }//end of if
     b.growAndShrink();
  }//end of for
}