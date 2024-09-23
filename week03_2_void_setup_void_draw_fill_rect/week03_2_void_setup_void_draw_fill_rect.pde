//week03_2_void_setup_void_draw_fill_rect
//week03_2_void_setup_void_draw_fill_rect
PImage img;
void setup(){
  size(600,400);
  img = loadImage("arufa.jpg");
}
void fraw(){
  image(img,0,0);
  fill(200,200,255,128);
  rect(mouseX,mouseY,80,60);
}
