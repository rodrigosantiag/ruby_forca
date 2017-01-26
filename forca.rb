def da_boas_vindas
  puts "Bem vindo ao jogo da forca!"
  puts "Qual o seu nome?"
  nome = gets.strip
  puts "Olá #{nome}, vamos começar o jogo para você."
  nome
end

def sorteia_palavra_secreta
  puts "Escolhendo uma palavra secreta..."
  palavra_secreta = "programador"
  puts "Palavra escolhida. A palavra tem #{palavra_secreta.size} letras."
  palavra_secreta
end

def nao_quer_jogar?
  puts "Quer jogar novamente? (S/N)"
  quer_jogar = gets.strip
  quer_jogar.upcase == "N"
end


def joga(nome)
  palavra_secreta = sorteia_palavra_secreta

  erros = 0
  chutes = []
  pontos_ate_agora = 0

  while erros < 5
    chute = pede_um_chute chutes, erros
    chutes << chute

    #colocar regras de acertos e erros aqui

  end

  puts "Você ganhou #{pontos_ate_agora} pontos."

end

def pede_um_chute(chutes, erros)
  puts "\n\n\n\n"
  puts "Erros até agora #{erros}"
  puts "Chutes até agora #{chutes}"
  puts "Entre com a letra ou palavra"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}"
  chute
end

nome = da_boas_vindas

loop do
  joga nome
  break if nao_quer_jogar?
end