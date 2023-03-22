void setup() {
  size(400, 400);
  
}

void draw() {
  background(255, 0 , 0);
  fill(100);

  rect(mouseX, mouseY, 30, 40);
  
  stroke(0, 255, 0);
  strokeWeight(20);
  
  ellipse(100, 100, 50, 60);
}
