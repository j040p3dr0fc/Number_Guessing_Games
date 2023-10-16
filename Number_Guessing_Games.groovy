    def guessTheNumber() {
    def secretNumber = new Random().nextInt(100) + 1
    def attempts = 0

    println("Bem-vindo ao jogo de adivinhação!")

    while (true) {
        print("Digite um número: ")
        def guess = System.console().readLine().toInteger()

        attempts++

        if (guess == secretNumber) {
            println("Parabéns! Você acertou em ${attempts} tentativas.")
            break
        } else if (guess < secretNumber) {
            println("Tente um número maior.")
        } else {
            println("Tente um número menor.")
        }
    }
}

guessTheNumber()
