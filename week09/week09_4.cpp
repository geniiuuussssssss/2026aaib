///week09-4.cpp
#include<stdio.h>
int main()
{
    int a=99,b=34;///有兩個瓶子 a裝咖啡 b裝清水
    printf("一開始a: %d b: %d\n",a,b);
    int temp = a;///在準備第三個瓶子 temp 先接住a的咖啡
    a=b;///a瓶子 就可以接住b的清水
    b=temp;///b瓶子 就可以接住temp裡暫時放的咖啡
    printf("交換後 a: %d b: %d\n",a,b);
}
