#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    srand(time(0));
    int numeroSecreto = rand() % 100 + 1;
    int tentativas = 0;

    while (1) {
        printf("Digite um número: ");
        int tentativa;
        scanf("%d", &tentativa);
        tentativas++;

        if (tentativa == numeroSecreto) {
            printf("Parabéns! Você acertou o número em %d tentativas.\n", tentativas);
            break;
        } else if (tentativa < numeroSecreto) {
            printf("Tente um número maior.\n");
        } else {
            printf("Tente um número menor.\n");
        }
    }

    return 0;
}
