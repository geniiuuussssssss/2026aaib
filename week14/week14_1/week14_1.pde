//week14-1 好玩的打地鼠, 結合 week13-1 week10-1
// 修改自 week13-1 再加上week10-1 的void mousePressed()
// File-Preference 字型設大一些
PImage img; // 外面宣告變數(可讓別人裡面使用)
void setup() {
  size(300,400);//視窗大小
  img = loadImage("gopher.png"); // 把 gopher.png 拉到程式裡
}
void mousePressed() { // week10-1 新加的程式:mouse按下去
  int i = mouseY / 100, j = mouseX / 100; // 左手i對應Y座標 右手對應X座標
  if (a[i][j] > 0) { //如果有地鼠
   a[i][j] = -120; //由正變負, 負的、代表死掉的地鼠 (要讓地鼠流血死掉了)
  }
}
int[][] a = { {0,0,0}, {0,0,0}, {0,0,0} }; // 地鼠有沒有冒起來
void draw(){
  background(0xFFFFFFF2); //淡黃色背景
  if(frameCount%60==0) { //每 60 frames(1秒) 冒出一隻地鼠
    int i = int(random(3)), j = int(random(3));//亂數決定 i j的值
    a[i][j] = 60; //會亂數決定1格, 站起來60 frames (1秒)
  }
  for(int i=0; i<3; i++){ //左手i
    for(int j=0; j<3; j++){//右手j
      float x = j*100, y = i*100+100; // 推算座標, 小心y往下100(藏白色版後)
      //if(i==0 && j==0) y+=mouseY; //暫時實驗用的,看到畫面壞了
      if(a[i][j]>0) { //如果有地鼠
        a[i][j]-=1; //生命的倒數計時
        y-= 100*sin(a[i][j]*PI/60); //小心 y 對應 sin()
        image(img, x, y, 100, 100);
      } else if (a[i][j]<0){ // 死掉的地鼠
        y-=100;
      rect(x, y, 100, 100);
      line(x, y, x+100, y+100);
      line(x+100, y, x, y+100);
      a[i][j] +=1;
      }
    }
    rect (0, 100+i*100, 300, 100); //低一格的地方, 放長方形擋住
   }
}
