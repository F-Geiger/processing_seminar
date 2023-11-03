void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  if (mousePressed) {
    fill(0);
    circle(mouseX, mouseY, 5);
  }
}
