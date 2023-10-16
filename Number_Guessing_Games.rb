def guess_the_number
  secret_number = rand(1..100)
  attempts = 0

  puts "Bem-vindo ao jogo de adivinhação!"

  loop do
    print "Digite um número: "
    guess = gets.chomp.to_i
    attempts += 1

    if guess == secret_number
      puts "Parabéns! Você acertou em #{attempts} tentativas."
      break
    elsif guess < secret_number
      puts "Tente um número maior."
    else
      puts "Tente um número menor."
    end
  end
end

guess_the_number
