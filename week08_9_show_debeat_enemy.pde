///week08_8_show_info
int [][] floor = {
  {1,1,11,1,5,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1},//20數字
  {1,1,11,1,5,1,1,1,1,1,1,1,1,3,1,1,1,1,2,1},//20數字
  {1,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},//20數字
  {1,1,11,1,5,1,3,1,1,1,1,1,13,12,1,1,1,1,2,1},//20數字
  {1,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {1,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {1,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {1,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {1,1,11,1,5,1,1,1,3,1,1,4,1,1,1,1,1,1,1,1},
  {1,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {1,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {1,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,1,1},
  {1,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,1,1},
  {1,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {1,1,1,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1}
};
PImage img,user;
PImage [] fimg = new PImage[40];
void setup(){
  size(640,480);
  img = loadImage("640x480.png");
  user = loadImage("15.png");
  for(int i=1;i<=22;i++) fimg[i] = loadImage(i+".png");
}

int userI = 12,userJ = 15;
void draw(){
  //background(img);
  for(int i=0;i<floor.length;i++) {
    for(int j=0;j<20;j++)  {
      int now = floor[i][j];
      image(fimg[now],j*32,i*32);
    }
  }
  image(user,16,16);
  textSize(30);
  text("Level: "+level,16,90);
  textSize(20);
  text("Level: "+level,16,140);
  text("Attack: "+attack,16,170);
  text("Defense: "+defense,16,200);
  text("Mp: "+mp,16,230);
  image(user,userJ*32,userI*32);
  if(gameOver) background(0,255,0);
}
int level = 1,live = 2693,attack = 14,defense = 16,mp = 200;
boolean gameOver = false;
void keyPressed(){
  int newI = userI,newJ = userJ;
  if(keyCode==RIGHT) newJ++;
  if(keyCode==LEFT) newJ--;
  if(keyCode==UP) newI--;
  if(keyCode==DOWN) newI++;
  if(floor[newI][newJ]!=11 && floor[newI][newJ]!=2) {
    userI = newI;
    userJ = newJ;
    if(floor[userI][userJ]==4) gameOver = true;
    floor[userI][userJ] = 2;
  }
}
