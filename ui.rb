def avisa_pontos_sessao(pontos_sessao)
  puts "Você tem #{pontos_sessao} até o momento"
end

def avisa_escolhendo_palavra
  puts "Escolhendo uma palavra secreta..."
end

def avisa_palavra_sorteada(palavra_secreta)
  puts "Palavra escolhida. A palavra tem #{palavra_secreta.size} letras."
end

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

def nao_quer_jogar?
  puts "Quer jogar novamente? (S/N)"
  quer_jogar = gets.strip
  nao_quer_jogar = quer_jogar.upcase == "N"
end

def cabecalho_chute(erros, chutes, mascara)
  puts "\n\n\n\n"
  puts "Palavra secreta: #{mascara}"
  puts "Erros até agora #{erros}"
  puts "Chutes até agora #{chutes}"
end

def pede_um_chute
  puts "Entre com a letra ou palavra"
  chute = gets.strip
  puts "Será que acertou? Você chutou #{chute}"
  chute
end