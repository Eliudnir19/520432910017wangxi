class VisualPoint extends Point {
  float w;
  color c;
  VisualPoint(float x,float y,float w,color c){
  super(x,y);
  this.w = w;
  this.c = c;
  }  
  void display(){
  stroke(c);
  strokeWeight(w);
  point(x,y);
  }
  
}
