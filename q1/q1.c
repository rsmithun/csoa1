#include <stdio.h>

long long int find_lonely_number(long long int *array, long long int len);

int main() {
    long long int n;
    scanf("%lld", &n);

    long long int size = 2 * n + 1;
    long long int arr[size];

    for (long long int i = 0; i < size; i++) {
        scanf("%lld", &arr[i]);
    }

    long long int result = find_lonely_number(arr, size);
    printf("%lld\n", result);

    return 0;
}
