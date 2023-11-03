int myCircleX;
int myCircleY;
int dirX;
int dirY;

void setup() {
  size(400, 400);
  
  myCircleX = 100;
  myCircleY = 100;
  dirX = 1;
  dirY = 1;
}

void draw() {
  myCircleX = myCircleX + dirX;
  myCircleY = myCircleY + dirY;
  
  if (myCircleX >= width || myCircleX <= 0) {
    dirX = -1 * dirX;
  }
  
  if (myCircleY >= height || myCircleY <= 0) {
    dirY = -1 * dirY;
  }
  
  background(255);
  fill(0);
  
  circle(myCircleX, myCircleY, 20);
}
