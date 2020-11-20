
void setup(){
size(800,800);
for(int i =0; i<10; i++){
  for(int j=0;j<10;j++)
  drawShape(int(width/10*i),int(height/10*j),int(80));
}
}

void drawShape(int posx, int posy, int sidelength){


int choice=floor(random(4));
switch(choice){
  
  //purple
  case 0:
noStroke();
   fill(137,157,192);
  rectMode(CORNER);
  rect(posx,posy,sidelength*2,sidelength*2);
  break;
  
  //white
  case 1:
noStroke();
fill(255);
rectMode(CORNER);
rect(posx,posy,sidelength*4,sidelength*4);
  break;
  
  //yellow
  case 2:
noStroke();
  fill(250,227,113);
  rectMode(CORNER);
  rect(posx,posy,sidelength*4,sidelength*4);
  break;
  
  //white
  case 3:
noStroke();
  fill(255);
  rectMode(CORNER);
  rect(posx,posy,sidelength*2,sidelength*2);
  break;
}




}
