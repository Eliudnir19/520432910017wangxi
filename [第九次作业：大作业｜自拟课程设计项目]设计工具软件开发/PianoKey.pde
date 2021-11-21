class PianoKey {
  int xpos;
  int ypos;
  int wd;
  int ht;
  color bgCl;  //琴键默认色
  color hitCl;  //按键时变成这个颜色
  float alfa;  //颜色分两层，下层默认色，上层半透明的 hitCl，这里是上层色的透明度

  AudioSample sample;

  PianoKey(String sampleName, int _xpos, int _ypos, int _wd, int _ht) {  //String是字符串的数据类型，文件名就是一个字符串

    sample=minim.loadSample(sampleName);
    xpos=_xpos;
    ypos=_ypos;
    wd=_wd;
    ht=_ht;

    if (ht>200) {  //白键在靠下的位置
      bgCl=color(255);
      hitCl=color(255, 0, 0);
    } else {      //黑键在靠上的位置
      bgCl=color(0);
      hitCl=color(255);
    }
    alfa=0;
  }

  boolean isHover() {  //鼠标位置是否在琴键方块里
    if (mouseX>xpos && mouseX<xpos+wd &&
      mouseY>ypos && mouseY<ypos+ht) {
      return true;
    } else {
      return false;
    }
  }

  void hitKey() {
    alfa=180;
    sample.trigger();
  }

  void update() {    //缓动
    alfa+=(0-alfa)*0.1;
  }

  void display() {  
    fill(bgCl);
    rect(xpos, ypos, wd, ht);
    fill(hitCl, alfa);
    rect(xpos, ypos, wd, ht);
    line(xpos,ypos+500,xpos+50,ypos+500);
  }
}
