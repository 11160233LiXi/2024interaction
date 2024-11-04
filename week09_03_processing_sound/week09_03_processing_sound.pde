//week09_03_processing_sound
//sketch-manager-libraries-搜尋sound

import processing.sound.*;
SoundFile sound;

void setup(){
  size(500,500);
  sound = new SoundFile(this,"In Game Music.mp3");
  //sound.play();//一遍
  sound.loop();
}
void draw(){

}
