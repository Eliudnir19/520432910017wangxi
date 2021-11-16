class Particle{

  float xPos;
  float yPos;
  int size;
  //float pSize;
  float xSpeed;
  float ySpeed;
  int col;
  
  Particle(){
  
    xPos = random(width);
    yPos = random(height);
    size = int(random(5.0,10.0));
    //pSize = 10.0;
    xSpeed = random(-1,1);
    ySpeed = random(-1,1);
    col = int(random(255));
  }
  
  void drawPraticle(){
  
    fill(0,col,col);
    noStroke();
    rect(xPos,yPos,size,size);
    xPos += xSpeed;
    yPos += ySpeed;
    

      
    if(xPos<0){
      xPos = 0;
      xSpeed *= -1.0;
    }
    if(xPos>width){
      xPos = width;
      xSpeed *= -1.0;
    }
    if(yPos<0){
      yPos = 0;
      ySpeed *= -1.0;
    }    
    
    if(yPos>height){
      yPos = height;
      ySpeed *= -1.0;
    }
    
    if(mousePressed==true){
      float xDist = mouseX-xPos;
      float yDist = mouseY-yPos;
      xPos+=xDist*0.1;
      yPos+=yDist*0.1;
      
    }
  
  }

}
