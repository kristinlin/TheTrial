Ball[] _balls;
boolean chainReaction;

void setup() {
 size(640, 360);
 noStroke();
 frameRate(30);
 chainReaction = false;
 _balls = new Ball[25];
 for (int x = 0; x < _balls.length; x++) {
  _balls[x] = new Ball();   
 }
}

void draw() {
  background(0);
  for (Ball b: _balls) {
    b.display();   
  }
  //if clicked, call chainReaction?
}

/*Ball grows larger, then smaller until disappears. If any other balls 
come in contact, they also */
void chainReaction() {
  chainReaction = true;
}