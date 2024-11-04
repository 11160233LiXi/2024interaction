//week09_07_keyboard_ninja_03_keypressed_applekey

PImage board;
void setup(){
  size(600,400);
  board = loadImage("board.png");
  randomApple();
}

float appleX = 100,appleY = 500,appleVX = 3,appleVY = -30;
char appleKey;

void randomApple(){
  appleX = random(100,500);
  appleY = 500;
  if(appleX<300) appleVX = random(0,8);
  else appleVX = random(-8,0);
  appleVY = random(-30,-25);
  appleKey = (char)('a'+random(26));
}
int score = 0;
void keyPressed(){
  if(state==0) state = 1;
  if(state==2) {
    if(key==appleKey) {
      score += 100;
    } else {
      score -=10;
    }
  }
}
int state = 0;
int countdown = 60*4;
void draw(){
  background(board);
  textSize(50);
  textAlign(CENTER,CENTER);
  fill(255,255,0);
  if(state==0) text("Press Any Key To Start",300,200);
  else if(state==1) {
    textSize(100);
    countdown--;
    if(countdown>60*3) text("3",300,200);
    else if(countdown>60*2) text("2",300,200);
    else if(countdown>60*1) text("1",300,200);
    else if(countdown>0) text("GO",300,200);
    else state = 2;
  } else {
    text("Score:"+score,400,60);
    fill(255,0,0);
    ellipse(appleX,appleY,80,80);
    fill(255,255,0);
    textSize(50);
    textAlign(CENTER,CENTER);
    text(appleKey,appleX,appleY);
    appleX += appleVX;//照著運動的速度，X往右移動
    appleY += appleVY;//照著運動的速度，Y也會移動
    appleVY += 0.98;//重力加速度
    if(appleX>600 || appleX<0 || appleY>550){
      randomApple();
    }//當蘋果太右邊，重設新的蘋果位置、速度
  }
}
