import finngeiger.smartfloor.*;

Smartfloor smartfloor;

float floorMidX;
float floorMidY;

void setup() {
  size(600, 600);
  
  smartfloor = new Smartfloor(this);
  floorMidX = 0;
  floorMidY = 0;
  
  smartfloor.start();
}

void draw() {
  setFloorMidPosition(); 
}

void tilePressed(int x, int y) {
  float screenX = floorXToScreenX(x);
  float screenY = floorYToScreenY(y);
  
  println("pressed -> x: " + screenX + ", y: " + screenY);
}

void tileReleased(int x, int y) {
  float screenX = floorXToScreenX(x);
  float screenY = floorYToScreenY(y);
  
  println("released -> x: " + screenX + ", y: " + screenY);
}
