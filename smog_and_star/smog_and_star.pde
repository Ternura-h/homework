PImage img;

ArrayList<Smog> smog;
int totalNum = 800;
int order = 0;
int index = 1;
float a;
int x;
int y;


 int num = 400;//创建数组：宇宙的星星
 star[]stars = new star[num];

void setup() {
  size(800, 800);
 colorMode(RGB);
 


  initiateCore();
   cursor(HAND);
  img = loadImage("(1).png");
  

  for(int a=0; a<num; a++){
  stars[a]= new star(random(0,width),random(0,height),random(0,10));
}
  
}


     
void draw() {

if (index < totalNum) {
    float a = random(1);
    if(a< 0.25){
     smog.add(new Smog(new PVector(0, random(height)), index));//左侧
    }
    
    if(a > 0.25 && a< 0.5){
      smog.add(new Smog(new PVector(random(width),0),index));}//上方
    
    if(a> 0.5 && a< 0.75){
       smog.add(new Smog(new PVector(random(width),height),index));}//下方
       
    if(a>0.75 && a<1){
     smog.add(new Smog(new PVector(width, random(height)), index));//右侧
    }
      
      
      //把每一个从屏幕四周出现的粒子加入agent，他们的概率是相等的
   
    index ++;//遍历每一个粒子
  }
   for (Smog a : smog) {
    PVector s = PVector.random2D().mult(4);
    a.update(s);
  }
  
 
  for(int a=0;a<num;a++){
  stars[a].display();
  }
  
  image(img,width/2-50,height/2-50,100,100);
}
  
   
void initiateCore() {//中间固定的核心粒子initiateCore
 background(175,215,237);
  smog = new ArrayList<Smog>();

  smog.add(new Smog(new PVector(width/2,height/2), 0));
}

void mousePressed(){
fill(random(51,102));
rect(0,0,width,height);


}
