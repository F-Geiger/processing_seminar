void setup() {
  size(400, 400);
   
  background(0);
  noStroke();
  fill(255);
}

void draw() {
  if (mousePressed) {
    circle(mouseX, mouseY, 30);
  } else {
    rect(mouseX, mouseY, 20, 20);
  }
}
