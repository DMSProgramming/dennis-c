
void setup() {

  size(600, 600);

  rectMode(CENTER_RADIUS);

  ellipseMode(CENTER_RADIUS);
  
  setInterval(playerMove, 1500);

}

var x = 300;
var y = 300;
var dir = 0;
var speed = 30;

void draw() {

  background(0, 0, 0);
  fill(66, 244, 69);
  rect(x, y, 30, 30);
    
  if (x > 630) {
    x = -30;
  }
  
  if (x < -30) {
    x = 630;
  }
  
  if (y > 630) {
    y = -30;
  }
  
  if (y < -30) {
    y = 630;
  }
    
}

void playerMove() {
  if (dir == 0) {
    x += speed;
  } else if (dir == 1) {
    x -= speed;
  } else if (dir == 2) {
    y += speed;
  } else if (dir == 3) {
    y -= speed;
  }
}

void keyPressed() {

  if (keyCode == RIGHT) {
    dir = 0;
  } else if (keyCode == LEFT) {
    dir = 1;
  } else if (keyCode == DOWN) {
    dir = 2;
  } else if (keyCode == UP) {
    dir = 3;
  }

}
