const numeroSecreto = Math.floor(Math.random() * 100) + 1;
let tentativas = 0;

while (true) {
  const tentativa = parseInt(prompt("Digite um número:"));
  tentativas++;

  if (tentativa === numeroSecreto) {
    alert(`Parabéns! Você acertou o número em ${tentativas} tentativas.`);
    break;
  } else if (tentativa < numeroSecreto) {
    alert("Tente um número maior.");
  } else {
    alert("Tente um número menor.");
  }
}
