float i;
float a;
float r;

void setup(){

size(800,800);
i=8;
a=0;
r=20;

}
void draw(){
  
 background(0);
//line1 match e1&e2
 stroke(147,224,255,80);
 strokeWeight(i);
 line(200+sin(a)*30,200+cos(a)*30,600+cos(a)*30,200+sin(a)*30);
 
//line2 match e1&e3
 stroke(244,222,41,80);
 strokeWeight(i);
 line(200+sin(a)*30,200+cos(a)*30,200+cos(a)*30,600+sin(a)*30);
 
//line3 match e3&e4
 stroke(179,214,110,80);
 strokeWeight(i);
 line(200+cos(a)*30,600+sin(a)*30,600+sin(a)*30,600+cos(a)*30);
  
//line4  match e2&e4
 stroke(224,160,158,80);
 strokeWeight(i); 
 line(600+cos(a)*30,200+sin(a)*30,600+sin(a)*30,600+cos(a)*30);
 
//ellipse1
fill(237,222,139,80);
noStroke();
ellipse(200+sin(a)*30,200+cos(a)*30,r,r);

//ellipse2
fill(251,178,23,80);
noStroke();
ellipse(600+cos(a)*30,200+sin(a)*30,r,r);

//ellipse3
fill(96,143,159,80);
noStroke();
ellipse(200+cos(a)*30,600+sin(a)*30,r,r);

//ellipse4
fill(1,77,103,80);
noStroke();
ellipse(600+sin(a)*30,600+cos(a)*30,r,r);

i=i+0.1;
a=a+0.02;
r=r+0.1;
   
}
