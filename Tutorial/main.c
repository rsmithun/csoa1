#include <stdio.h>

long long int add(long long int a, long long int b);
long long int subtract(long long int a, long long int b);
long long int multiply(long long int a, long long int b);
long long int isgreaterthan10(long long int a);
long long int shift(long long int num, long long int sh);


int main()
{
    long long int x, y;
    printf("Enter two numbers 'x' and 'y' for operations : ");
    scanf("%lld %lld", &x, &y);
    long long int ans = add(x, y);
    printf("x + y = %lld\n", ans);
    ans = subtract(x, y);
    printf("x - y = %lld\n", ans);
    ans = multiply(x, y);
    printf("x * y = %lld\n", ans);
    ans = isgreaterthan10(x);
    printf("x > 10 = %lld\n", ans);
    ans = isgreaterthan10(y);
    printf("y > 10 = %lld\n", ans);
		
		printf("Enter the number to be shifted : ");
		scanf("%lld", &x);
		printf("Enter the shift : ");
		scanf("%lld", &y);

		ans = shift(x, y);
		printf("%lld << %lld is : %lld\n", x, y, ans);

    return 0;
}