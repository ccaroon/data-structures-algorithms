import java.io.BufferedReader;
import java.io.InputStreamReader;

class Factorial {

    private static double factorial(int n) {
        double value = 0.0;

        if (n == 0 || n == 1) {
            value = 1;
        } else {
            value = n * factorial(n - 1);
        }

        return (value);
    }

    public static void main(String args[]) throws Exception {
        String input = null;

        System.out.println("** Compute Factorial **");
        System.out.print("Enter An Integer: ");

        BufferedReader inputReader = new BufferedReader(new InputStreamReader(System.in));
        input = inputReader.readLine();

        int n = Integer.parseInt(input.trim());

        if (n >= 0 && n <= 170) {
            double f = factorial(n);
            System.out.printf("%d! = %.0f\n", n, f);
        } else {
            System.out.printf("Sorry! Can't compute !%d.\n", n);
        }
    }
}
