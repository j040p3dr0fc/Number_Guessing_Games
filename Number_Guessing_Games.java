import java.util.Scanner;

public class GuessTheNumber {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int secretNumber = (int) (Math.random() * 100) + 1;
        int attempts = 0;

        System.out.println("Bem-vindo ao jogo de adivinhação!");

        while (true) {
            System.out.print("Digite um número: ");
            int guess = scanner.nextInt();
            attempts++;

            if (guess == secretNumber) {
                System.out.println("Parabéns! Você acertou em " + attempts + " tentativas.");
                break;
            } else if (guess < secretNumber) {
                System.out.println("Tente um número maior.");
            } else {
                System.out.println("Tente um número menor.");
            }
        }

        scanner.close();
    }
}
