//week04_9_carrot03_float_s_mouseButton_L_R
void setup(){
  size(600,500);
  background(0);
  stroke(255);
  fill(0);
}
void draw(){

}
float s = 25;
void mousePressed(){
  ellipse(mouseX,mouseY,s,s);
  if(mouseButton==LEFT) s *= 1.1;
  if(mouseButton==RIGHT) s *= 0.9;
}
