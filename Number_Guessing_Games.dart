import 'dart:io';
import 'dart:math';

void main() {
  final Random random = Random();
  final int secretNumber = random.nextInt(100) + 1;
  int attempts = 0;

  print("Bem-vindo ao jogo de adivinhação!");

  while (true) {
    stdout.write("Digite um número: ");
    final int guess = int.tryParse(stdin.readLineSync()!) ?? 0;
    attempts++;

    if (guess == secretNumber) {
      print("Parabéns! Você acertou em $attempts tentativas.");
      break;
    } else if (guess < secretNumber) {
      print("Tente um número maior.");
    } else {
      print("Tente um número menor.");
    }
  }
}
