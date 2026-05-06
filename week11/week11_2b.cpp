//week11-2b.cpp SOIT106_ADVANCE_001
#include <stdio.h>
int main()
{
	int N;
	scanf("%d",&N);
	int ans=0;//Part B
	while(N>0){ //Part A
		ans=ans*10+N%10;
		N=N/10;//Part B
	}
	printf("%d+%d=%d\n",N, ans, ans+N);
}
