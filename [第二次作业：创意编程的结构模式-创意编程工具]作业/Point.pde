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
  
  Point copy(){
    return new Point(x,y);
  }
}
