void setFloorMidPosition() {
  float[] midPosition = smartfloor.getAveragePosition();
  
  floorMidX = floorXToScreenX(midPosition[0]);
  floorMidY = floorYToScreenY(midPosition[1]);
}

float floorXToScreenX(float floorX) {
  return (width / Smartfloor.NUMBER_COLUMNS) * floorX;
}

float floorYToScreenY(float floorY) {
  return (height / Smartfloor.NUMBER_ROWS) * floorY;
}
