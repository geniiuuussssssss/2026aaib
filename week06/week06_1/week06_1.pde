//week06-1 好玩的程式設計
//file-preference 偏好設定 字型放大 接續上周的week05-5
int [][] b = new int[10][16];//java 2D陣列
void setup() {
  size(800, 500);//視窗大小
}
void draw() {
  background(225);//背景白色
  for (int i=0; i<10; i++) {//左手 i的for(迴圈)對應y座標
    for (int j=0; j<16; j++) {//右手 i的for(迴圈)對應x座標
      if (b[i][j]==1) fill(#F5CBFF);//如果陣列有1就放淡紫色
      else fill(255);//否則就放白色
      rect(j*50, i*50, 50, 50);//小格子 (左手 i對應y座標 右手 i對應x座標)
    }
  }
}
void mousePressed() {
  int i = mouseY / 50, j=mouseX / 50;//左手 i對應y座標 右手 i對應x座標
  b[i][j] = 1;//設成1等一下會變紫色
}
