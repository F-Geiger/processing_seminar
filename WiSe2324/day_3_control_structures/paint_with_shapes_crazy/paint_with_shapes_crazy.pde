int currentShape;
color currentColor;

void setup() {
  size(600, 600);
  currentShape = 1;

  background(255);
}

void draw() {
  fill(currentColor);
  
  if (mousePressed && mouseButton == LEFT) {
    if (currentShape == 1) {
      circle(mouseX, mouseY, 10);
    } else if (currentShape == 2) {
      rect(mouseX, mouseY, 10, 10);
    }
  }
  
  if ((mousePressed && mouseButton == RIGHT) || currentShape == 2) {
    currentColor = currentColor - color(0, 0, 1);
  }
}

void keyPressed() {
  if (key == '1') {
    currentShape = 1;
  } else if (key == '2') {
    currentShape = 2;
  }
  
  if (key == 'a') {
    currentColor = color(255, 0, 0);
  } else if (key == 'b') {
    currentColor = color(0, 255, 0);
  }
}
