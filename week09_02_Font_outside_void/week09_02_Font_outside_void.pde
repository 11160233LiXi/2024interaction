//week09_02_Font_outside_setup_createFont
PFont font0,font,font2;
void setup(){
  size(500,500);
  font0 = createFont("Ariel",50);
  font = createFont("標楷體",50);
  font2 = createFont("elffont-rock.otf",50);
}
void draw(){
  background(0);
  textSize(50);
  textFont(font0);
  text("hello",50,50);
  
  textFont(font);
  text("看到中文了",50,150);
  
  textFont(font2);
  text("ㄇㄚ ㄉㄜ",50,250);
}
