use std::io;

fn main() {
    let secret_number = rand::random::<u32>() % 100 + 1;
    let mut attempts = 0;

    println!("Bem-vindo ao jogo de adivinhação!");

    loop {
        let mut guess = String::new();

        println!("Digite um número: ");
        io::stdin().read_line(&mut guess).expect("Falha ao ler a linha");
        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => continue,
        };

        attempts += 1;

        match guess.cmp(&secret_number) {
            std::cmp::Ordering::Equal => {
                println!("Parabéns! Você acertou em {} tentativas.", attempts);
                break;
            }
            std::cmp::Ordering::Less => println!("Tente um número maior."),
            std::cmp::Ordering::Greater => println!("Tente um número menor."),
        }
    }
}
