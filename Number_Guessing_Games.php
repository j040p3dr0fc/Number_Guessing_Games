<?php
$secretNumber = rand(1, 100);
$attempts = 0;

echo "Bem-vindo ao jogo de adivinhação!\n";

while (true) {
    $guess = readline("Digite um número: ");
    $attempts++;

    if ($guess == $secretNumber) {
        echo "Parabéns! Você acertou em $attempts tentativas.\n";
        break;
    } elseif ($guess < $secretNumber) {
        echo "Tente um número maior.\n";
    } else {
        echo "Tente um número menor.\n";
    }
}
?>
