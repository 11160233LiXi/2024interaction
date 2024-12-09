//week14_06_cute_cursor
void setup(){
  size(500,500);
  PImage img = loadimage(".png");
  cursor(img);//滑鼠只能32X32
}
void draw(){
  background(#FFFFF2);
}
