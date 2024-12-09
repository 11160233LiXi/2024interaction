//week14_02_draw_lines_loadPixels_pixels_updatePixels

void setup(){
  size(500,500);
  background(255);
}
void draw(){
  //pixels
  
}
void mouseDragged(){
  if(mouseButton==LEFT) { //左鍵拖曳時
    line(mouseX,mouseY,pmouseX,pmouseY);//本來的線是灰黑色的
    loadPixels();//取出畫面的像素
    //println(pixels[0]);白色是-1
    for(int i=0;i<width*height;i++) {//全部的點都巡一次色彩
      if(pixels[i]!=-1) pixels[i] = color(random(255),random(255),random(255));
    }//如果{不是白色}就是有畫面碰到pixels，都變成亂數彩色
    updatePixels();//若有修改要在放回去
  }
}
