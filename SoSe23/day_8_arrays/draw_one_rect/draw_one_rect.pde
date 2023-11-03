Rectangle[] rects;

int nextIndex;

void setup() {
  size (400, 400);
  
  rects = new Rectangle[500];
  
  nextIndex = 0;
  
  fill(0);
  noStroke();
}

void draw() {
  background(255);
  
  for (int i = 0; i < rects.length; i += 1) {
    if (rects[i] != null) {
      rects[i].draw(this);
    }
  }
}

void mousePressed() {
  rects[nextIndex] = new Rectangle(mouseX, mouseY, 20, 30);
  
  if (nextIndex + 1 == rects.length) {
    nextIndex = 0;
  } else {
    nextIndex += 1;
  }
}
