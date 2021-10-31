boolean[] b=new boolean[4];
Status status;
boolean p1, p2, p3, p4;
color bc=color(255), tc=color(0);  
boolean change=false, collapse=false; 

void setup() {
  size(640, 360);
  background(bc);
  frameRate(30);

  PFont font = createFont("黑体", 150);
  textAlign(CENTER);
  textFont(font);
  fill(tc);
  text("创意编程", width/2, 200);
}

void draw() {
  if (collapse) {
    if (change) {
      update(0);
      change=false;
    } else {
      update(1);
      change=true;
    }
  }
}


void mousePressed() {
  collapse=true;
}

void update(int g) {
  for (int i=g; i<width-1; i+=2) {
    for (int j=g; j<height-1; j+=2) {
      if (get(i, j)==tc) {
        p1=true;
      } else {
        p1=false;
      }
      if (get(i+1, j)==tc) {
        p2=true;
      } else {
        p2=false;
      }
      if (get(i, j+1)==tc) {
        p3=true;
      } else {
        p3=false;
      }    
      if (get(i+1, j+1)==tc) {
        p4=true;
      } else {
        p4=false;
      }

      status=new Status(p1, p2, p3, p4);
      b=status.output();
      
      if (b[0]==true) {
        set(i, j, tc);
      } else {
        set(i, j, bc);
      }
      if (b[1]==true) {
        set(i+1, j, tc);
      } else {
        set(i+1, j, bc);
      }
      if (b[2]==true) {
        set(i, j+1, tc);
      } else {
        set(i, j+1, bc);
      }
      if (b[3]==true) {
        set(i+1, j+1, tc);
      } else {
        set(i+1, j+1, bc);
      }
    }
  }
}
class Status {
  boolean s1, s2, s3, s4; 
  float p=50f; 
  boolean result[]=new boolean[4];

  Status(boolean b1, boolean b2, boolean b3, boolean b4) {

    if (b1==true && b2==false && b3==false && b4==false) {  // 1.除一，全没有
      s1=false;
      s2=b2;
      s3=true;
      s4=b4;
    } else if (b1==false && b2==true && b3==false && b4==false) {  // 2.除二，全没有
      s1=b1;
      s2=false;
      s3=b3;
      s4=true;
    } else if (b1==true && b2==true && b3==false && b4==false) {   // 3.一、二，其余没有，含阻塞
      float odd=random(100);
      if (odd<p) {
        s1=b1;
        s2=b2;
        s3=b3;
        s4=b4;
      } else {
        s1=false;
        s2=false;
        s3=true;
        s4=true;
      }
    } else if (b1==true && b2==false && b3==true && b4==false) {  // 4.一、三，其余没有
      s1=false;
      s2=b2;
      s3=b3;
      s4=true;
    } else if (b1==false && b2==true && b3==true && b4==false) {  // 5.二、三，其余没有
      s1=b1;
      s2=false;
      s3=b3;
      s4=true;
    } else if (b1==true && b2==true && b3==true && b4==false) {   // 6.一、二、三，其余没有
      s1=b1;
      s2=false;
      s3=b3;
      s4=true;
    } else if (b1==true && b2==false && b3==false && b4==true) {  // 7.一、四，其余没有
      s1=false;
      s2=b2;
      s3=true;
      s4=b4;
    } else if (b1==false && b2==true && b3==false && b4==true) {  // 8.二、四，其余没有
      s1=b1;
      s2=false;
      s3=true;
      s4=b4;
    } else if (b1==true && b2==true && b3==false && b4==true) {  // 9.一、二、四，其余没有
      s1=false;
      s2=b2;
      s3=true;
      s4=b4;
    } else {  
      s1=b1;
      s2=b2;
      s3=b3;
      s4=b4;
    }
  }


  boolean[] output() {
    boolean[] result={s1, s2, s3, s4};
    return result;
  }
}
