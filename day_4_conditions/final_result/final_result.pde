float speed = 4;

float brushSize = 1;

boolean up;
boolean down;
boolean left;
boolean right;

float offsetX;
float offsetY;

float lastX;
float lastY;

void setup() {
  size(600, 600);
  
  up = false;
  down = false;
  left = false;
  right = false;
  
  offsetX = 0;
  offsetY = 0;
  
  lastX = mouseX;
  lastY = mouseY;
  
  background(0);
}

void draw() {
  if (up) {
    offsetY -= speed;
  } else if (down) {
    offsetY += speed;
  }
  
  if (left) {
    offsetX -= speed;
  } else if (right) {
    offsetX += speed;
  }
  
  if (!up && !down && !left && !right) {
    offsetX = 0;
    offsetY = 0;
  }
  
  float x = mouseX + offsetX;
  float y = mouseY + offsetY;
  
  strokeWeight(brushSize);
  stroke(255);
  
  if (mousePressed || keyPressed) {
    line(lastX, lastY, x, y);
  } else {
    brushSize = 1;
  }
  
  lastX = x;
  lastY = y;
}

void keyPressed() {
  if (key == '+') {
    brushSize += 1;
  } else if (key == '-' && brushSize - 1 > 0) {
    brushSize -= 1;
  } else if (key == 'w') {
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
