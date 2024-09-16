///week02-2_pacman_test
void setup(){
  size(400,400);
}
void draw(){
  background(255);
  fill(#FFDC0F);
  float a = radians(mouseX);
  if(a>PI/4) a = a - PI/4;
  arc(200,200,300,300,0+a,PI*2-a,PIE);
}
