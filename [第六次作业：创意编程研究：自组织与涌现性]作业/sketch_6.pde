Particle [] p;

void setup(){

  size(600,400);
  p = new Particle[100];
  
  for (int i = 0;i<p.length;i++){
  
    p[i] = new Particle();
  
  }
    background(0);
  
}

void draw(){

  for(int i = 0;i<p.length;i++){
  
    p[i].drawParticle();
    p[i].checkEdge();
    
  
  }

}
