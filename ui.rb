def avisa_chute_repetido(chute)
  puts "Você já chutou #{chute}"
end

def avisa_letra_nao_encontrada
  puts "Letra não encontrada!"
end

def avisa_letra_encontrada(total_encontrado)
  puts "Letra encontrada #{total_encontrado} vezes!"
end

def avisa_acertou
  puts "Acertou!!"
end

def avisa_nao_acertou
  puts "Errou!!"
end

def avisa_pontos_ate_agora(pontos_ate_agora)
  puts "Você ganhou #{pontos_ate_agora} pontos."
end

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
  nao_quer_jogar = quer_jogar.upcase == "N"
end

def cabecalho_chute(erros, chutes)
  puts "\n\n\n\n"
  puts "Erros até agora #{erros}"
  puts "Chutes até agora #{chutes}"
end

def pede_um_chute(chutes, erros)
  puts "Entre com a letra ou palavra"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}"
  chute
end