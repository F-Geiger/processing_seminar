class Rectangle {

   private float x;
   private float y;
   private float w;
   private float h;
   
   public Rectangle(float x, float y, float w, float h) {
     this.x = x;
     this.y = y;
     this.w = w;
     this.h = h;
   }
   
   public void draw(PApplet p) {
     p.rect(this.x, this.y, this.w, this.h);
   }
}
