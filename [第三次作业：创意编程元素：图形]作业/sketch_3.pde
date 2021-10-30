float y = random(100,300);
float x = y/2;
float m = 4*x/5;
float n = m/2+300;
float p = 300+x/2;
float q = 200+2*x/3;
float w = n-m;
float h = y-x;


void setup(){
  size(600,600);
  background(255);
}

void draw(){
  
  fill(112);
  noStroke();
  rect(n,y,600,600);
  rect(m,x,w,h);
  
  fill(0);
  strokeWeight(10);
  stroke(0);
  
  
  line(0,x,600,x);
  line(0,y,600,y);
  line(0,p,600,p);
  line(0,q,600,q);
  line(m,0,m,600);
  line(n,0,n,600);
  
  save("3.png");
  
  
}
