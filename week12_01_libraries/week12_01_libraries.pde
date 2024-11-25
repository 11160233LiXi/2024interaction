//week12_01_libraries
//官網_documentation_Libraries_sound
//學過 play() stop() pause()

import processing.sound.*;
SoundFile sound1,sound2;
int playing = 2;

void setup() {
  size(640,360);
  background(255);
  sound1 = new SoundFile(this,"Intro Song_Final.mp3");
  sound1 = new SoundFile(this,"In Game Music.mp3");
}
void draw(){
  if(sound1.isPlaying()){
    playing=1;
  } else if(sound2.isPlaying()){//音樂2有沒有撥放
    playing=2;
  } else{
    if(playing==1) sound2.play();//換另外一首
    else sound1.play();
  }
}
