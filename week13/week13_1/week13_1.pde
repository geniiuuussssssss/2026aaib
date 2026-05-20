//week13-1 好玩的程式設計
//接續week12-1 week11-1程式
//把gopher.png拉到程式裡
PImage img;
void setup(){
  size(300,300);//視窗大小
  img = loadImage("gopher.png");//把gopher.png圖檔拉進來
}
int [][] a = {{0,0,0}, {0,0,0}, {0,0,0}};//地鼠有沒有冒起來
void draw(){
  background(#FFFFF2);//淡黃色背景
  if(frameCount%60==0){//每60 frames(1秒)冒出一支地鼠
    int i=int (random(3)), j=int (random(3));
    a[i][j] = 60;//會站起來60 frames(1秒)
  }
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      float x=j*100,y=i*100+100;
      if(a[i][j]>0){
        a[i][j] -= 1;//生命的倒數計時
        y -= 100*sin(a[i][j]*PI/60);
      }
      image(img,x,y,100,100);
    }
    rect(0,100+i*100,300,100);//在低一格的地方放長方形擋住
  }
}
