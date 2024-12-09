//week14_04_draw_lines_rain_ArrayList_PVector_p_pp
PImage img;
void setup(){
  size(500,500);
  img = createImage(500,500,RGB);//用來畫圖的畫布
}
int x = 250,y = 0;
ArrayList<PVector> p = new ArrayList<PVector>();
void draw(){ //畫在套的資料夾(比喻)
  background(img);
  //ellipse(x,y,20,20);//畫圓形
  for(PVector pp:p) {
    ellipse(pp.x,pp.y,20,20);
    if(pp.y<498 && img.pixels[int (pp.x)+int(pp.y)*500]==-16777216) pp.y++;  
  } //if(y<498 && img.pixels[x+y*500]==-16777216) y++;//沒有碰到其他顏色往下
}
void mouseDragged(){//畫在抵
  background(img);
  stroke(random(255),random(255),random(255));
  line(mouseX,mouseY,pmouseX,pmouseY);
  loadPixels();
  img.updatePixels();
  for(int i = 0;i<500*500;i++) {
    img.pixels[i] = pixels[i];
  }
  img.updatePixels();
  updatePixels();
  for(PVector pp:p) {
    ellipse(pp.x,pp.y,20,20);
  } 
}
void mousePressed(){
  if(mouseButton==RIGHT) {
    p.add(new PVector(mouseX,mouseY));
  }
}
