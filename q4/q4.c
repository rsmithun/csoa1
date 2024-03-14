#include <stdio.h>

long long int solve(long long int *array, long long int len);

int main() {
    long long int n;
    scanf("%lld", &n);

    long long int arr[n];

    for (long long int i = 0; i < n; i++) {
        scanf("%lld", &arr[i]);
    }

    long long int result = solve(arr, n);

    printf("%lld\n", result);

    return 0;
}
