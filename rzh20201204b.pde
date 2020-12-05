int a;

void setup(){
size(1200,800);
background(255);
textSize(12);

  
fill(227,112,30);
noStroke();
rect(40,40,60,30);

fill(1,112,69);
noStroke();
rect(40,90,60,30);

fill(134,30,1);
noStroke();
rect(40,140,60,30);

fill(255);
noStroke();
rect(40,190,60,30);

fill(0);
String txt = "Eraser";
text(txt,52,210);


cursor(ARROW);

}

void draw(){


  if(mousePressed == true){
  noCursor();
  }
  else if( ((mouseX > 40 && mouseX < 100) &&( mouseY > 40 && mouseY <70))||((mouseX > 40 && mouseX < 100) &&( mouseY > 90 && mouseY <120))||((mouseX > 40 && mouseX < 100) &&( mouseY > 140 && mouseY <170))||(mouseX > 40 && mouseX < 100)&&(mouseY >190 && mouseY <220))
 { 
 cursor(HAND);
 }
 else {
 cursor(ARROW);
 }

 
  if((mouseX > 40 && mouseX < 100) &&( mouseY > 40 && mouseY <70)){// rect1
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,40,100,40);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,40,40,70);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,70,100,70);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(100,40,100,70);
  
  
  
  }
  
  else{
  stroke(255);
  strokeWeight(3);
  line(40,40,100,40);
  
  stroke(255);
  strokeWeight(3);
  line(40,40,40,70);
  
  stroke(255);
  strokeWeight(3);
  line(40,70,100,70);
  
  stroke(255);
  strokeWeight(3);
  line(100,40,100,70);
  
}

if((mouseX > 40 && mouseX < 100) &&( mouseY > 90 && mouseY <120)){ //rect2
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,90,100,90);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,120,100,120);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,90,40,120);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(100,90,100,120);
  
if( mousePressed == true ){

}

}
  else{
  stroke(255);
  strokeWeight(3);
  line(40,90,100,90);
  
  stroke(255);
  strokeWeight(3);
  line(40,120,100,120);
  
  stroke(255);
  strokeWeight(3);
  line(40,90,40,120);
  
  stroke(255);
  strokeWeight(3);
  line(100,90,100,120);
  
}

if((mouseX > 40 && mouseX < 100) &&( mouseY > 140 && mouseY <170)){ //rect3
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,140,100,140);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,170,100,170);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,140,40,170);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(100,140,100,170);

}
  else{
  stroke(255);
  strokeWeight(3);
  line(40,140,100,140);
  
  stroke(255);
  strokeWeight(3);
  line(40,170,100,170);
  
  stroke(255);
  strokeWeight(3);
  line(40,140,40,170);
  
  stroke(255);
  strokeWeight(3);
  line(100,140,100,170);
  
}

 if((mouseX > 40 && mouseX < 100) &&( mouseY > 190 && mouseY <220)){// rect4
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,190,100,190);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,190,40,220);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(40,220,100,220);
  
  stroke(92,167,186,50);
  strokeWeight(3);
  line(100,190,100,220);
 
  
  }
  
  else{
  stroke(255);
  strokeWeight(3);
  line(40,190,100,190);
  
  stroke(255);
  strokeWeight(3);
  line(40,190,40,220);
  
  stroke(255);
  strokeWeight(3);
  line(40,220,100,220);
  
  stroke(255);
  strokeWeight(3);
  line(100,190,100,220);
  
}

start();

}

void start(){

if((mouseX > 40 && mouseX < 100) &&( mouseY > 40 && mouseY <70)&&(mousePressed == true)){

a=0;
}

if((mouseX > 40 && mouseX < 100) &&( mouseY > 90 && mouseY <120)&&(mousePressed == true)){

a=1;
}

if((mouseX > 40 && mouseX < 100) &&( mouseY > 140 && mouseY <170)&&(mousePressed == true)){

a=2;
}
if((mouseX > 40 && mouseX < 100) &&( mouseY > 190 && mouseY <220)&&(mousePressed == true)){

a=3;
}
}

void mouseDragged(){

int x = mouseX;
int y = mouseY; 

if(a ==0){
stroke(227,112,30);
line(x, y, pmouseX, pmouseY);
}

else if(a==1){
stroke(1,112,69);
line(x, y, pmouseX, pmouseY);

}

else if(a==2){
stroke(134,30,1);
line(x, y, pmouseX, pmouseY);

}

else if(a==3){
fill(255);
ellipse(x, y, 10,10);

}

}
