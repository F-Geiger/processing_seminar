int NUMBER_SHAPES = 10;
int NUMBER_VERTICIES_PER_SHAPE = 100;

PShape[] shapes;
float[] xs;
float[] ys;

void setup() {
  size(1000, 1000);
  
  shapes = new PShape[NUMBER_SHAPES];
  xs = new float[NUMBER_SHAPES];
  ys = new float[NUMBER_SHAPES];
  
  for (int i = 0; i < NUMBER_SHAPES; i += 1) {
    xs[i] = random(width);
    ys[i] = random(height);
    shapes[i] = createShape();
    shapes[i].beginShape();
    shapes[i].fill(0, 0, 255);
    shapes[i].noStroke();
    
    for (int j = 0; j < NUMBER_VERTICIES_PER_SHAPE; j += 1) {
      shapes[i].vertex(random(50), random(50));
    }
    
    shapes[i].endShape(CLOSE);
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < NUMBER_SHAPES; i += 1) {
    xs[i] += random(-1, 1);
    ys[i] += random(-1, 1);
    shape(shapes[i], xs[i], ys[i]);
  }
}
