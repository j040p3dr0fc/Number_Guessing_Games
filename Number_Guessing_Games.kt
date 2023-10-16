import kotlin.random.Random

fun main() {
    val secretNumber = Random.nextInt(1, 101)
    var attempts = 0

    println("Bem-vindo ao jogo de adivinhação!")

    while (true) {
        print("Digite um número: ")
        val guess = readLine()?.toIntOrNull() ?: continue
        attempts++

        when {
            guess == secretNumber -> {
                println("Parabéns! Você acertou em $attempts tentativas.")
                break
            }
            guess < secretNumber -> println("Tente um número maior.")
            else -> println("Tente um número menor.")
        }
    }
}
