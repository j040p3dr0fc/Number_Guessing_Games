using System;

class Program {
    static void Main() {
        Random random = new Random();
        int numeroSecreto = random.Next(1, 101);
        int tentativas = 0;

        while (true) {
            Console.Write("Digite um número: ");
            int tentativa = int.Parse(Console.ReadLine());
            tentativas++;

            if (tentativa == numeroSecreto) {
                Console.WriteLine($"Parabéns! Você acertou o número em {tentativas} tentativas.");
                break;
            } else if (tentativa < numeroSecreto) {
                Console.WriteLine("Tente um número maior.");
            } else {
                Console.WriteLine("Tente um número menor.");
            }
        }
    }
}
