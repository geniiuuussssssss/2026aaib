///week12-4.cpp 程そ计
/// ex. 51/68 だΘ3/4程そ计17
#include <stdio.h>
int main()
{
    printf("叫块ㄢ计(ex. 51 68):");
    int a,b;
    scanf("%d%d",&a,&b);
    int ans=1;///1﹚俱埃ヴ计琌氮匡
    for(int i=1;i<=a;i++){///р1...a场刚筁
        if(a%i==0 && b%i==0) ans=i;
        ///狦i俱埃a 俱埃b 碞琌程そ计
    }
    printf("程そ计琌 %d\n",ans);
    printf("%d / %dだぇ, 跑%d / %d \n", a, b, a/ans, b/ans);
}
