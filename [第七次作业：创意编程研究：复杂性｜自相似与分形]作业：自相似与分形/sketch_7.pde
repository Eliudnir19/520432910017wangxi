
import processing.pdf.*;
void setup(){

  size(1000,1000);
  background(255);
  render();
  endRecord();

}

void subdivide(VisualLine line){
  if(line.length()<1)return;
  line(line.p1.x,line.p1.y,line.p2.x,line.p2.y);
  VisualLine[] lines = line.subdivide(4);
  for(int i = 0;i<lines.length;i++){
    subdivide(lines[i]);
  }
}

void render(){
  Point p1 = new Point(width/2,height);
  Point p2 = new Point(width/2,height/2);
  VisualLine line = new VisualLine(p1,p2);
  subdivide(line);
}
