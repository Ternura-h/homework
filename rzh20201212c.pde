PImage img;
ParticleSystem PS;
 
 int num = 400;//创建数组：宇宙的星星
star[]stars = new star[num];
 
void setup() {
  size(800, 800);
  img = loadImage("(1).png");
  PS = new ParticleSystem(new PVector(width/2, height/2));
  cursor(HAND);
  
  for(int a=0; a<num; a++){
  stars[a]= new star(random(0,width),random(0,height),random(0,10));
}
  
  }
  

void draw() {
 
  background(0);
  PS.addParticle();
  PS.run();
  
  for (int a=0;a<num;a++){
  stars[a].display();
  }
  image(img,width/2-50,height/2-50,100,100);
}
  
