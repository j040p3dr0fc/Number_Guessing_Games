package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())
	secretNumber := rand.Intn(100) + 1
	attempts := 0

	fmt.Println("Bem-vindo ao jogo de adivinhação!")

	for {
		var guess int
		fmt.Print("Digite um número: ")
		fmt.Scan(&guess)
		attempts++

		if guess == secretNumber {
			fmt.Printf("Parabéns! Você acertou em %d tentativas.\n", attempts)
			break
		} else if guess < secretNumber {
			fmt.Println("Tente um número maior.")
		} else {
			fmt.Println("Tente um número menor.")
		}
	}
}
