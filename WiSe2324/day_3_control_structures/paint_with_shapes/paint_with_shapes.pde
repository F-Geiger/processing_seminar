int currentShape;

void setup() {
  size(600, 600);
  currentShape = 1;

  background(255);
  fill(0);
}

void draw() {
  if (mousePressed) {
    if (currentShape == 1) {
      circle(mouseX, mouseY, 10);
    } else if (currentShape == 2) {
      rect(mouseX, mouseY, 10, 10);
    }
  }
}

void keyPressed() {
  if (key == '1') {
    currentShape = 1;
  } else if (key == '2') {
    currentShape = 2;
  }
}
