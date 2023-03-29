boolean resetBackground;

void setup() {
  size(400, 400);
   
  resetBackground = false;
   
  background(0);
  noStroke();
  fill(255);
}

void draw() {
  
  if (resetBackground) {
    background(0);
    resetBackground = false;
  }
  
  if (mousePressed) {
    circle(mouseX, mouseY, 30);
  } else {
    rect(mouseX, mouseY, 20, 20);
  }
}

void keyPressed() {
 if (key == 'a') {
    resetBackground = true;
  }
}
