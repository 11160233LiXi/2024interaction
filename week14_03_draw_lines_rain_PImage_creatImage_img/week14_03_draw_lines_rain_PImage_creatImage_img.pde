//week14_03_draw_lines_rain_PImage_creatImage_img
PImage img;
void setup(){
  size(500,500);
  img = createImage(500,500,RGB);//用來畫圖的畫布
  img.loadPixels();
  for(int i=0;i<500*500;i++) {
    img.pixels[i] = color(#FFFFF2);//顏色-14的底
  }
  img.updatePixels();
}
int x = 250,y = 0;
void draw(){ //畫在套的資料夾(比喻)
  background(img);
  ellipse(x,y,20,20);//畫圓形
  if(img.pixels[x+y*500]==-14) y++;//沒有碰到其他顏色往下
}
void mouseDragged(){//畫在抵
  background(img);
  line(mouseX,mouseY,pmouseX,pmouseY);
  loadPixels();
  img.loadPixels();
  for(int i = 0;i<500*500;i++) img.pixels[i] = pixels[i];//把畫布的色彩搬到img裡面
  img.updatePixels();
  updatePixels();
}
