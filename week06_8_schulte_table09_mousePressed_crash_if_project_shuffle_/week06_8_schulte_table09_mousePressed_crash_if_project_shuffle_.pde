///week06_8_schulte_table09_mousePressed_crash_if_project_shuffle_random

int [] used = new int[26];
int [][] table = new int[5][5];
void setup(){
  size(500,600);
  textSize(60);
  textAlign(CENTER,CENTER);
  for(int i=0;i<5;i++) {
    for(int j=0;j<5;j++) {
      int now = int(random(1,26));
      while(used[now]==1) now = int(random(1,26));
      table[i][j] = now;
      used[now] = 1;
    }
  }
  startT = millis();
}
int startT = 0;
int [][] pressed = new int[5][5];
void draw(){
  background(#FFFFF2);
  for(int i=0;i<5;i++){
    for(int j=0;j<5;j++){
      if(pressed[i][j]==1) fill(128);
      else fill(255);
      rect(j*100,i*100,100,100);
      fill(0); text(""+table[i][j],50+j*100,50+i*100);
    }
  }
  text("timer : "+ nf((millis() - startT)/1000.0,0,1),200,550);
}
int answer = 1;
void mousePressed(){
  int i = mouseY/100,j = mouseX/100;
  if(table[i][j]==answer){
    pressed[i][j] = 1;
    answer++;
  }
}
