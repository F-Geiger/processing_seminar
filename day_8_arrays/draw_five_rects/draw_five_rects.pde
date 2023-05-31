Rectangle[] rects;
int nextIndex;

void setup() {
  size (400, 400);

  rects = new Rectangle[5];
  nextIndex = 0;
  
  fill(0);
  noStroke();
}

void draw() {
  background(255);
  
  if (rects[0] != null) {
    rects[0].draw(this);
  }
  
  if (rects[1] != null) {
    rects[1].draw(this);
  }
  
  if (rects[2] != null) {
    rects[2].draw(this);
  }
  
  if (rects[3] != null) {
    rects[3].draw(this);
  }
  
  if (rects[4] != null) {
    rects[4].draw(this);
  }
}

void mousePressed() {
  rects[nextIndex] = new Rectangle(mouseX, mouseY, 20, 30);
  
  if (nextIndex + 1 < rects.length) {
    nextIndex += 1;
  }
}
