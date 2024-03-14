#include <stdio.h>

void rotate_left(long long int *array, long long int len);

int main() {
    long long int n;
    scanf("%lld", &n);

    long long int arr[n];

    for (long long int i = 0; i < n; i++) {
        scanf("%lld", &arr[i]);
    }

    rotate_left(arr, n);
    
    for (long long int i = 0; i < n; i++) {
        printf("%lld ", arr[i]);
    }

    return 0;
}
