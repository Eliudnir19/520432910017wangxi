class Point {
  float x,y;
  
  Point(float x,float y){
  this.x = x;
  this.y = y;
  }
  Point(){
    x = 0;
    y = 0;  
  }
  
    float distance(Point p){
    float dx = x- p.x;
    float dy = y- p.y;
    return sqrt(dx*dx+dy*dy);
  }
  
  Point copy(){
    return new Point(x,y);
  }

}
