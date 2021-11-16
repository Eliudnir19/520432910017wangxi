class VisualLine extends Line {
  float w;
  color c;

  VisualLine(Point p1, Point p2, float w, color c){
    super(p1, p2);
    this.w = w;
    this.c = c;
  }

  VisualLine(Point p1, Point p2) {
    super(p1, p2);
    this. w =1;
    this.c = color(0);
  }

  VisualLine[] subdivide(int n) {
    VisualLine[] lines = new VisualLine[n];
    for (int i = 0;i<lines.length;i++){
      Point p1 = this.p2.copy();
      float radian = random(TAU);
      float radius = length()*.5;
      float x = p1.x+cos(radian)*radius;
      float y = p1.y+sin(radian)*radius;
      Point p2 = new Point(x,y); 
      lines[i] = new VisualLine(p1,p2);
    }
    return lines;
  }

  void setWeight(float w) {
    this.w = w;
  }

  void setColor(color c) {
    this .c= c;
  }
  void display() {
    stroke(c);
    strokeWeight(w);
    line(p1.x, p1.y, p2.x, p2.y);
  }
  
  
}
