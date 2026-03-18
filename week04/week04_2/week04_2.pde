//week04-2 好玩的程式設計 for for 迴圈+if判斷
//ctrl n 開新的程式視窗
void setup(){//設定
  size(600,400);//視窗大小600,400
}
void draw(){//畫圖
for(int y=0;y<400;y+=50){//外面 for迴圈對 y
 for(int x=0;x<600;x+=50){//裡面 for迴圈對 x
  if(x<mouseX&&mouseX<x+50) fill(#34B4B9);
  else if(y<mouseY&&mouseY<y+50) fill(#34B4B9);
  else fill(#3449B9);//自己在tool-色彩選擇器挑色彩
  rect(x,y,50,50);
 }
}
}
