/**int color1 [] = {0,0,0};
void setup(){
  fill(0,0,0);
  rect(150,150,100,100);
}
void draw(){
 fill(color1[0], color1[1], color1[2]*/
int x = 0;
int speed = 1;
void setup(){
  size(400,400);
  background(0,0,0);
  fill(255,0,0);
  rect(x,100,200,200);
}
void draw(){
 x=x+speed;
 rect(x,100,200,200);
 if(x==300|| x==0){
   speed=speed*-1;
}
