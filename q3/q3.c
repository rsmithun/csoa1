#include <stdio.h>
#include <string.h>

long long int check_palindrome(char *string, long long int length);

int main(){
    char str [10001];
    scanf("%s", str);

    long long int len = strlen(str);

    long long int result = check_palindrome(str, len);

    printf("%lld", result);
}