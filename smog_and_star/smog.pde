class Smog {
  
  PVector location;

  float diameter = 10;
  boolean agentTouch;
  PVector speed;
  PVector center;

  int agentIndex;
  int agentOrder = 0;
  
  //ArrayList<Agent> connected;
  ArrayList<PVector> pair;

  Smog(PVector loc, int i) {
    location = loc;
    
    agentIndex = i;
 
    pair = new ArrayList<PVector>();
    center = new PVector(width/2,height/2);
    
    
  }

  void update(PVector s) {
    
    touch();
    move(s);
    show();
  
  }

  void move(PVector speed_) {
   
    if (agentTouch) {
      speed = new PVector(0, 0);
    } else {
      speed = speed_;
      speed.add(PVector.sub(center, location).normalize().mult(2));//中心点坐标减去该点坐标初始化为1后乘以2
    }
    location.add(speed);

  }

  void show() {//确定粒子颜色
    noStroke();
    if (agentTouch) {//如果粒子相互接触
      float dac = PVector.dist(this.location, center);//该点坐标减去中心点坐标的浮点值
      float cc = map(dac, 0, width, 0, totalNum);//定义域是差值width/2,值域为粒子总数
      fill(cc,cc,cc);
    } else {
      fill(102);
    }
    ellipse(location.x, location.y, random(40),random(40)); 
  }

  void touch() {
    smog.get(0).agentTouch = true;

    for (Smog a : smog) {
      if (this != a && a.agentTouch && !this.agentTouch) {//这个粒子不是起始粒子，并且上一个已经接触到了中间的粒子，并且这个粒子还在路上
        float dd = PVector.dist(this.location, a.location);//这个粒子到上一个粒子的线性距离
        if (dd <= (this.diameter+a.diameter)/2) {
          this.agentTouch = true;
          //connected.add(this);
          pair.add(new PVector(this.agentIndex, a.agentIndex));//把两个粒子顺序数相加，就是总共已经粘连的粒子数
          order ++;
          agentOrder = order + 1;
        } else {
          this.agentTouch = false;
        }
      }
    }
  }


}
