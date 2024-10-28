///week08_7_PGB_eat_jewel
int [][] floor = {
  {4,1,11,1,5,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1},//20數字
  {4,1,11,1,5,1,1,1,1,1,1,1,1,3,1,1,1,1,2,1},//20數字
  {4,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},//20數字
  {4,1,11,1,5,1,3,1,1,1,1,1,13,12,1,1,1,1,2,1},//20數字
  {4,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {4,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {4,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {4,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {4,1,11,1,5,1,1,1,3,1,1,4,1,1,1,1,1,1,1,1},
  {4,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {4,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {4,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,1,1},
  {4,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,1,1},
  {4,1,11,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1},
  {4,1,1,1,5,1,1,1,3,1,1,14,1,1,1,1,1,1,2,1}
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
  image(user,userJ*32,userI*32);
  if(gameOver) background(0,255,0);
}
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
