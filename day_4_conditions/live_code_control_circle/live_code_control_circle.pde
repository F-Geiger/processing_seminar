float speed = 4;

boolean up;
boolean down;
boolean left;
boolean right;

float x;
float y;


void setup() {
  size(600, 600);
  
  up = false;
  down = false;
  left = false;
  right = false;
  
  x = random(0, width);
  y = random(0, height);
  
  background(0);
  fill(255);
  noStroke();
}

void draw() {
  if (up) {
    y -= speed; // y = y - speed;
  } else if (down) {
    y += speed;
  }
  
  circle(x, y, 20);
}

void keyPressed() {
  if (key == 'w') {
    up = true;
  } else if (key == 's') {
    down = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    up = false;
  } else if (key == 's') {
    down = false;
  }
}
