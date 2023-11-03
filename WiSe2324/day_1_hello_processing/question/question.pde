void setup() {
  size(400, 400);
  background(0, 0, 0);
}

void draw() {
  //float r = map(mouseX, 0, width, 0, 255);
  //float g = map(mouseY, 0, width, 0, 255);
  
  //fill(r, g, 0);
  
  if(mousePressed && (mouseButton == LEFT)) {
     fill(255, 0, 0);
  } else if (mousePressed  && (mouseButton == RIGHT)) {
    fill(0, 255, 0);
  }
  
  circle(mouseX, mouseY, 10);
}
