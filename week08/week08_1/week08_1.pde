//week08-1 好玩的程式設計 氣球
//file-preference 字型設大
size(500,500);
PImage img;
img = loadImage("balloon.png");
image(img,0,0,96,132);//看你的圖的大小，依比例調整，拉到程式裡
//image(圖,x,y,寬,高)
image(img,96,0,96*2,132*2);//兩倍大的氣球
