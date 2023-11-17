int CIRCLE_EXTEND = 50; 

int circleX;
int circleY;

int dirX;

void setup() {
  size(400, 400);
  
  circleX = 100;
  circleY = 100;
  dirX = 1;
}

void draw() {
  background(255);
  fill(0);
  
  circleX = circleX + dirX;
  boolean isWidthWallHit = circleX + (CIRCLE_EXTEND / 2) >= width;
  if (isWidthWallHit || circleX - (CIRCLE_EXTEND / 2) <= 0) {
    dirX = dirX * -1;
  }
  
  
  circle(circleX, circleY, CIRCLE_EXTEND);
}
