math.randomseed(os.time())

function guessTheNumber()
    local secretNumber = math.random(1, 100)
    local attempts = 0

    print("Bem-vindo ao jogo de adivinhação!")

    repeat
        io.write("Digite um número: ")
        local guess = tonumber(io.read())

        if guess == secretNumber then
            print("Parabéns! Você acertou em " .. attempts .. " tentativas.")
            break
        elseif guess < secretNumber then
            print("Tente um número maior.")
        else
            print("Tente um número menor.")
        end

        attempts = attempts + 1
    until false
end

guessTheNumber()
