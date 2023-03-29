float myCircleX;
float myCircleY;
float dirX;
float dirY;

void setup() {
  size(400, 400);
  
  myCircleX = 100;
  myCircleY = 100;
  dirX = random(1);
  dirY = random(1);
  
  background(255);
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
  
  
  fill(0);
  
  circle(myCircleX * random(1), myCircleY, 20);
  
  fill(0, 255, 0);

  circle(myCircleX * random(1), myCircleY * random(2), 20);
}
