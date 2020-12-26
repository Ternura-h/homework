class pipe{
  float top;
  float bottom;
  float x;
  float w1;
  float w2;
  float speed;
  float spacing;
 
 
  pipe(){
    spacing = 125;
    top = random(height/ 6, .75 * height);
    bottom = height - (top + spacing);
    w1=top*5/12;//宽度
    w2=bottom*3/4;
    x = width;
    speed = 6;
  }

  void show(){
   stroke(#536976);
    strokeWeight(5);

    line(x,0,x-w1,top);
    line(x-2*w1,0,x-w1,top);
    line(x-w1-w2,height,x-w1,height-bottom);
    line(x-w1+w2,height,x-w1,height-bottom);
  }

  void update(){
    x -= speed;
  }

  boolean offscreen(){
    return x < -w1;
  }

  boolean hit(bird b){
    if(b.pos.y <top){
  if( b.pos.y-(12/5*(b.pos.x)-12/5*(x-2*w1)) < 13/5*b.r ||  b.pos.y+12/5*(b.pos.x)-5/12*(x)<13/5*b.r)
        return true;
    }
    if(b.pos.y > height-bottom){
     if(-4/3*(b.pos.x)+height+4/3*(x-w1-w2)-b.pos.y< 5/3*b.r || 4/3*(b.pos.x)+height-4/3*(x-w1+w2)-b.pos.y<5/3*b.r)
    return true;
  } 
    return false;
  }
}
