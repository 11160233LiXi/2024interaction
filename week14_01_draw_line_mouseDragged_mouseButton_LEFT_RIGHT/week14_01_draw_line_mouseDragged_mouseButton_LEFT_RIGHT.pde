//week14_01_draw_line_mouseDragged_mouseButton_LEFT_RIGHT

void setup(){
  size(500,500);
}
int x=-1,y=-1;
void draw() {
  if(x!=-1) {
    ellipse(x,y,1,1);
    y++; //y變大就會越來越長，像是往下滴水
  }
}

void mouseDragged(){
  if(mouseButton==LEFT) line(mouseX,mouseY,pmouseX,pmouseY);
  if(mouseButton==RIGHT) {
    x = mouseX;
    y = mouseY;
  }
}
