#include <iostream>
#include <cstdlib>
#include <ctime>

int main() {
    srand(time(0));
    int numeroSecreto = rand() % 100 + 1;
    int tentativas = 0;

    while (true) {
        std::cout << "Digite um número: ";
        int tentativa;
        std::cin >> tentativa;
        tentativas++;

        if (tentativa == numeroSecreto) {
            std::cout << "Parabéns! Você acertou o número em " << tentativas << " tentativas." << std::endl;
            break;
        } else if (tentativa < numeroSecreto) {
            std::cout << "Tente um número maior." << std::endl;
        } else {
            std::cout << "Tente um número menor." << std::endl;
        }
    }

    return 0;
}
