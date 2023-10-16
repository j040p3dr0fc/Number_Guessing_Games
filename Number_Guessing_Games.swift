import Foundation

func guessTheNumber() {
    let secretNumber = Int.random(in: 1...100)
    var attempts = 0

    print("Bem-vindo ao jogo de adivinhação!")

    repeat {
        print("Digite um número: ", terminator: "")
        if let input = readLine(), let guess = Int(input) {
            attempts += 1

            if guess == secretNumber {
                print("Parabéns! Você acertou em \(attempts) tentativas.")
                break
            } else if guess < secretNumber {
                print("Tente um número maior.")
            } else {
                print("Tente um número menor.")
            }
        } else {
            print("Por favor, digite um número válido.")
        }
    } while true
}

guessTheNumber()
