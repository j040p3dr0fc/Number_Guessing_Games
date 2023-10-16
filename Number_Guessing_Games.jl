function guess_the_number()
    secret_number = rand(1:100)
    attempts = 0

    println("Bem-vindo ao jogo de adivinhação!")

    while true
        print("Digite um número: ")
        guess = parse(Int, readline())

        if guess == secret_number
            println("Parabéns! Você acertou em $attempts tentativas.")
            break
        elseif guess < secret_number
            println("Tente um número maior.")
        else
            println("Tente um número menor.")
        end

        attempts += 1
    end
end

guess_the_number()
