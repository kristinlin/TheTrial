Ball b;

void setup() {
 size(640, 360);
 stroke(255);
 frameRate(30);
 b = new Ball();
  
}

void draw() {
  background(0);
  b.display();
}