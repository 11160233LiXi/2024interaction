///week14_05_draw_lines_myFlood_x_y_c1_c2_pixels_isOK

void setup(){
  size(500,500);
  background(#FFFFF2);
}
void draw(){
  if(mousePressed && mouseButton==LEFT) line(mouseX,mouseY,pmouseX,pmouseY);
  if(mousePressed && mouseButton==RIGHT) {
    loadPixels();//畫面讀取到pixels[]陣列裡面
    color c1 = pixels[mouseX+mouseY*500]; ///原本的顏色
    color c2 = color(random(255),random(255),random(255));//亂數新色彩
    if(c1!=c2) myFloodFill(mouseX,mouseY,c1,c2);
    updatePixels();//把陣列的數值放回去
  }
}
boolean isOK(int x,int y,color c1) {
  if(x<0 || y<0 || x>=500 || y>=500) return false;//超過邊界不能做
  if(pixels[x+y*500]!=c1) return false;//色彩原本的c1色彩不同，就不要變色
  return true;
}
void myFloodFill(int x,int y,color c1,color c2){
  pixels[x+y*500] = c2;//這一格設定成新色彩
  if(isOK(x+1,y,c1))  myFloodFill(x+1,y,c1,c2);
  if(isOK(x-1,y,c1))  myFloodFill(x-1,y,c1,c2);
  if(isOK(x,y+1,c1))  myFloodFill(x,y+1,c1,c2);
  if(isOK(x,y-1,c1))  myFloodFill(x,y-1,c1,c2);
} //不要點太大區域，因為呼叫函示太多次
