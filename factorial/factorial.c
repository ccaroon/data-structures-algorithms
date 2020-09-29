#include <stdio.h>

double factorial(int n) {
    double value = 0.0;

    if (n == 0 || n == 1) {
        value = 1;
    } else {
        value = n * factorial(n - 1);
    }

    return (value);
}

int main(int argc, char *argv[]) {
    int input = 0;

    printf("** Compute Factorial **\n");
    printf("Enter An Integer: ");
    scanf("%d", &input);

    if (input >= 0 && input <= 170) {
        double f = factorial(input);
        printf("%d! = %.0f\n", input, f);
    } else {
        printf("Sorry! Can't compute !%d.\n", input);
    }

    return 0;
}
