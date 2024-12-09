//week14_08_big_cursor_image_imagemode
// 希望不只用 16x16 或 32x32，要更大
PImage imgBigCute, imgBigKitty, imgCursor; // 宣告三個圖片變數

void setup() {
  size(500, 500); // 設定畫布大小
  imgBigCute = loadImage("bigcute.png"); // 載入第一張圖片
  imgBigKitty = loadImage("bigkitty.png"); // 載入第二張圖片
  imgCursor = imgBigKitty; // 預設圖片為 imgBigKitty
}

void draw() {
  background(#FFFFF2); // 設定背景顏色為淡黃色
  
  imageMode(CENTER); // 設定圖片模式為以中心點為參考
  image(imgCursor, mouseX, mouseY); // 在滑鼠位置繪製當前圖片
  imageMode(CORNER); // 重置圖片模式為以左上角為參考
  
  // 每隔 120 幀切換圖片為 imgBigCute
  if (frameCount % 120 == 0) imgCursor = imgBigCute;
  
  // 每隔 120 幀中的第 60 幀切換圖片為 imgBigKitty
  if (frameCount % 120 == 60) imgCursor = imgBigKitty;
}
