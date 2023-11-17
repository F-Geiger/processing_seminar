int circleX;
int circleY = 200;

void setup() {
  size(400, 400);
  
  circleX = 100;
}

void draw() {
  background(255);
  fill(0);
  
  circleX = circleX + 1;
  
  circle(circleX, circleY, 100);
}
