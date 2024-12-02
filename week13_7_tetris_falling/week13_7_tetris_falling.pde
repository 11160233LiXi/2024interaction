// week13_7_tetris_falling
// 這個程式模擬了一個 Tetris 方塊隨時間下降的動作，並可透過左右方向鍵移動方塊。

void setup(){
  size(300, 600); // 設定畫布大小為 300x600 像素
}

float x = 50, y = 50; // 初始方塊的位置 (x, y)

void draw(){
  background(0); // 將背景設為黑色
  
  fill(153, 0, 204); // 設定方塊的顏色 (紫色)
  
  // 繪製一個由四個小方塊組成的 Tetris 方塊
  rect(x, y-25, 25, 25);   // 上方的方塊
  rect(x+25, y, 25, 25); // 上方右邊的方塊
  rect(x, y, 25, 25);      // 左下角的方塊
  rect(x, y+25, 25, 25);   // 右下角的方塊
  
  // 每 50 幀讓方塊下降 25 像素
  if(frameCount % 50 == 0) {
    y += 25; // 每次下降 25 像素
  }
}

void keyPressed(){
  // 檢測按鍵輸入，左右移動方塊
  if(keyCode == RIGHT) x += 25; // 按右方向鍵，向右移動 25 像素
  if(keyCode == LEFT) x -= 25;  // 按左方向鍵，向左移動 25 像素
}
