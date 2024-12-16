//week15_08_maze_DFS_boolean_true_false
int [][] maze = {
  {1,1,1,1,1,1,1,1,1,1},
  {1,0,0,1,1,0,0,0,1,1},
  {1,1,0,1,1,0,1,0,1,1},
  {1,1,0,0,1,0,1,0,1,1},
  {1,0,1,0,0,0,1,0,1,1},
  {1,0,1,1,0,1,1,0,1,1},
  {1,0,0,0,0,1,1,0,1,1},
  {1,0,1,1,1,1,1,0,1,1},
  {1,0,0,0,0,0,1,0,0,1},
  {1,1,1,1,1,1,1,1,1,1},
};
int [][] visited = new int[10][10];
int startI  = 1,startJ = 1,I = 1,J = 1,step = 1;
void setup(){
  size(400,400);
  ///visited[I][J] = step;
}
void draw(){
  for(int i=0;i<maze.length;i++) {
    for(int j=0;j<maze[0].length;j++) {
      if(maze[i][j]==1) fill(0);
      else fill(255);
      rect(j*40,i*40,40,40);
    }
  }

  fill(255, 0, 0); // 設定顏色為紅色
  rect(startJ * 40, startI * 40, 40, 40); // 繪製一個紅色方塊，起始位置在 (startJ, startI)，大小為 40x40 像素
  
  for (int i = 0; i < maze.length; i++) { // 遍歷迷宮的每一行
    for (int j = 0; j < maze[0].length; j++) { // 遍歷迷宮的每一列
      if (visited[i][j] > 0) { // 如果這個位置已經訪問過
        fill(0, 0, 255); // 設定顏色為藍色
        text("" + visited[i][j], j * 40 + 20, i * 40 + 20); // 在方塊中間顯示訪問順序
      }
    }
  }
}
boolean DFS(int i, int j, int s) { // 深度優先搜尋 (DFS) 方法
  if (i == 8 && j == 8) return true; // 如果走到目標位置 (8,8)，返回 true
  
  if (maze[i][j] == 1) return false; // 如果當前格子是牆 (值為1)，無法通行，返回 false
  if (visited[i][j] > 0) return false; // 如果這個位置已經訪問過，返回 false
  
  visited[i][j] = s; // 標記當前格子為訪問過，s 為步數或順序

  // 探索上下左右四個方向的格子，如果找到路徑則返回 true
  if (DFS(i + 1, j, s + 1)) return true; // 向下走
  if (DFS(i - 1, j, s + 1)) return true; // 向上走
  if (DFS(i, j + 1, s + 1)) return true; // 向右走
  if (DFS(i, j - 1, s + 1)) return true; // 向左走

  visited[i][j] = 0; // 如果四個方向都無法通行，回溯並取消標記
  return false; // 返回 false，表示無法找到路徑
}

void mousePressed() { // 當按下滑鼠時觸發
  visited[1][1] = 0;
  DFS(1, 1, 1); // 從迷宮的起點 (1, 1) 開始搜尋，步數初始值設為 1
}

  
