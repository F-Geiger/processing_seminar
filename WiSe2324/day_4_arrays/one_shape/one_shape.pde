PShape[] shapes;
int[] xs;
int[] ys;

// Voher mussten wir das alles schreiben..
//int shape1X;
//int shape1Y;
//int shape2X;
//int shape2Y;
////.....
//int shape 100X;
//int shape 100Y;

void setup() {
  size(200, 200);
  
  shapes = new PShape[2];
  xs = new int[2];
  ys = new int[2];
  
  xs[0] = 50;
  ys[0] = 75;
  shapes[0] = createShape();
  shapes[0].beginShape();
  shapes[0].fill(0, 0, 255);
  shapes[0].noStroke();
  shapes[0].vertex(0, 0);
  shapes[0].vertex(0, 50);
  shapes[0].vertex(75, 50);
  shapes[0].vertex(50, 0);
  shapes[0].endShape(CLOSE);
  
  xs[1] = 100;
  ys[1] = 10;
  shapes[1] = createShape();
  shapes[1].beginShape();
  shapes[1].fill(0, 0, 255);
  shapes[1].noStroke();
  shapes[1].vertex(0, 0);
  shapes[1].vertex(0, 50);
  shapes[1].vertex(75, 50);
  shapes[1].endShape(CLOSE);
}

void draw() {
  background(255);
  
  shape(shapes[0], xs[0], ys[0]);
  shape(shapes[1], xs[1], ys[1]);
}
