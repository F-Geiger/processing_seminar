void setup() {
  size(400, 400);
  
}

void draw() {
  float r = map(mouseX, 0, width, 0, 255);
  float g = map(mouseY, 0, width, 0, 255);
  background(0, 0, 0);
  
  fill(r, g, 0);
  
  if(mousePressed) {
    circle(mouseX, mouseY, 10);
  }
}
