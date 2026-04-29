//week10-5.cpp SOIT106_ADVANCE_001
#include <stdio.h>
int main()
{
	int N;
	scanf("%d",&N);
	int ans=0, N2=N;
	while( N>0 ){
		ans=ans*10+N%10;
		N=N/10;
	}
	printf("%d+%d=%d\n",N2,ans,N2+ans);
}
