///week13_04_PShape_gundam_loadShape_obj_mtl_jpg
PShape gundam;

void setup(){
  size(500, 500, P3D); // 設定視窗大小與 P3D 渲染模式
  gundam = loadShape("Gundam.obj");
}

void draw(){
  shape(gundam, 0, 0, 250, 500);
}