class star{
float x;
float y;
float r;


star(float x, float y, float r){
this.x=x;
this.y=y;
this.r=r;
}

void display(){
fill(random(255),random(255),random(255),80);
noStroke();
ellipse(x,y,r,r);
}

}
