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
  
  background(0);
  fill(255);
  noStroke();
}

void draw() {
  if (up) {
    y -= speed;
  } else if (down) {
    y += speed;
  }
  
  if (left) {
    x -= speed;
  } else if (right) {
    x += speed;
  }
  
  circle(x, y, 10);
}

void keyPressed() {
  if (key == 'w') {
    up = true;
  } else if (key == 's') {
    down = true;
  } else if(key == 'd') {
    right = true;
  } else if (key == 'a') {
    left = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    up = false;
  } else if (key == 's') {
    down = false;
  } else if(key == 'd') {
    right = false;
  } else if (key == 'a') {
    left = false;
  }
}
