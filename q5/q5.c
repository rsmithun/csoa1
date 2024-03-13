#include <stdio.h>
#include <stdlib.h>

void solve(long long int *array, long long int *answer, long long int len);

int main(){
    int n;
    scanf("%d", &n);

    long long int arr[n];

    for (long long int i = 0; i < n; i++) {
        scanf("%lld", &arr[i]);
    }

    long long int* answer = (long long int*)calloc(n, sizeof(long long int));

    solve(arr, answer, n);

    for (long long int i = 0; i < n; i++) {
        printf("%lld ", answer[i]);
    }

    return 0;
}