//week13_01_animated_background
PImage [] img = new PImage[3];
void setup(){
  size(550,370);
  img[0] = loadImage("101.png");
  img[1] = loadImage("102.png");
  img[2] = loadImage("103.png");
}
int I = 0;
void draw(){
  background(img[I]);
  if(frameCount%60==0) I = (I+1)%3;
}
