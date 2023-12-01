int NUMBER_VERTICIES = 9;

int[][] verticies;


void setup() {
  size(1000, 1000);
  
  verticies = new int[NUMBER_VERTICIES][2];

  verticies[0][0] = 480;
  verticies[0][1] = 960;
  
  verticies[1][0] = 450;
  verticies[1][1] = 900;
  
  verticies[2][0] = 100;
  verticies[2][1] = 804;
  
  verticies[3][0] = 100;
  verticies[3][1] = 740;
  
  verticies[4][0] = 56;
  verticies[4][1] = 450;
  
  verticies[5][0] = 123;
  verticies[5][1] = 310;
  
  verticies[6][0] = 340;
  verticies[6][1] = 355;
  
  verticies[7][0] = 560;
  verticies[7][1] = 325;
  
  verticies[8][0] = 823;
  verticies[8][1] = 400;
}


void draw() {
  background(253);
  fill(0);
  circle(820, 450, 20);
  circle(867, 564, 5);
  noFill();
  strokeWeight(4);
  beginShape();
  
  endShape();
}
