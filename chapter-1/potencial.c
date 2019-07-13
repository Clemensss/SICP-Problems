#include <stdio.h>

int square(int x);
int even(int n);
int fast_expt(int b, int n);

int main()
{

    return 0;
}
int fast_expt(int b, int n)
{
    if(n==1) return 1;

    else if(even(n))
	return square(fast_expt(b, n/2));

    else
	return b * (fast_expt(b, n-1));
}

int even(int n)
{
    if(n%2 == 0) return 1;
   
    return 0;
}

int square(int x)
{
    return x*x;
}
