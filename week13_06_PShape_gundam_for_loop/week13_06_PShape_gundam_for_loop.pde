///week13_05_PShape_gundam_loadShape_shape_pushMatrix_scale_translate_rotate_popMatrix
PShape gundam;

void setup(){
  size(500, 500, P3D); // 設定視窗大小與 P3D 渲染模式
  gundam = loadShape("Gundam.obj");
}

void draw(){
  background(#BBFF81);
  pushMatrix();
    translate(mouseX,mouseY);
    rotateY(radians(frameCount));
    rotate(radians(180));
    scale(5,5,5);
    shape(gundam, 0, 0); //原本shape(gundam, 0, 0, 250/2, 500/2);
  popMatrix();
}
