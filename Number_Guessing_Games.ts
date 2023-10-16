import * as readlineSync from "readline-sync";

function guessTheNumber() {
  const secretNumber = Math.floor(Math.random() * 100) + 1;
  let attempts = 0;

  console.log("Bem-vindo ao jogo de adivinhação!");

  while (true) {
    const guess = parseInt(readlineSync.question("Digite um número: "));
    attempts++;

    if (guess === secretNumber) {
      console.log(`Parabéns! Você acertou em ${attempts} tentativas.`);
      break;
    } else if (guess < secretNumber) {
      console.log("Tente um número maior.");
    } else {
      console.log("Tente um número menor.");
    }
  }
}

guessTheNumber();
