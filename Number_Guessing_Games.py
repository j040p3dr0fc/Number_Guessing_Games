import random

# Gera um número aleatorio entre 1 e 100
numero_secreto = random.randint(1, 100)
print('Vamos jogar um jogo de adivinhação, você podera chutar quantas vezes você quiser, você tera que chutar um número entre 1 e 100, vamos ver a sua sorte nisso')

# Inicia o loop do jogo
while True:
    # Obtém a tentativa do usuário
    tentativa = int(input('Tente adivinhar o número (entre 1 e 100): '))

    # Verifica se a tentativa está correta
    if tentativa == numero_secreto:
        print('Parabéns! Você acertou!')
        break  # Sai do loop, pois o jogo terminou
    elif tentativa < numero_secreto:
        print('Tente um número maior.')
    else:
        print('Tente um número menor.')