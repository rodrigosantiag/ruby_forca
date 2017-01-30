require_relative "ui"
require_relative "rank"

def sorteia_palavra_secreta
  avisa_escolhendo_palavra
  arquivo = File.read "dicionario.txt"
  todas_as_palavras = arquivo.split "\n"
  numero_aleatorio = rand(todas_as_palavras.size)
  palavra_secreta = todas_as_palavras[numero_aleatorio].strip.downcase
  avisa_palavra_sorteada palavra_secreta
  palavra_secreta
end

def pede_um_chute_valido(chutes, erros, mascara)
  cabecalho_chute erros, chutes, mascara
  loop do
    chute = pede_um_chute.strip.downcase
    if chutes.include? chute
      avisa_chute_repetido chute
    else
      return chute
    end
  end
end

def palavra_mascarada(chutes, palavra_secreta)
  mascara = ""
  for letra in palavra_secreta.chars
    if chutes.include? letra
      mascara +=  letra
    else
      mascara += "_"
    end
  end
  mascara
end

def joga(nome)
  palavra_secreta = sorteia_palavra_secreta

  erros = 0
  chutes = []
  pontos_ate_agora = 100

  while erros < 5

    mascara = palavra_mascarada chutes, palavra_secreta
    chute = pede_um_chute_valido chutes, erros, mascara

    chutes << chute

    chutou_uma_unica_letra = chute.size == 1

    if chutou_uma_unica_letra

      total_encontrado = palavra_secreta.count chute

      if total_encontrado == 0
        avisa_letra_nao_encontrada
        erros += 1
        pontos_ate_agora -=20
      else
        avisa_letra_encontrada total_encontrado
        pontos_ate_agora += 20
      end

    else
      acertou = chute == palavra_secreta
      if acertou
        avisa_acertou
        pontos_ate_agora += 100
        break
      else
        avisa_nao_acertou
        pontos_ate_agora -= 20
        erros += 1
      end
    end

  end

  avisa_pontos_ate_agora pontos_ate_agora

  pontos_ate_agora

end

def jogo_da_forca
  nome = da_boas_vindas
  pontos_sessao = 0

  mostra_campeao le_rank

  loop do
    pontos_jogo = joga nome
    pontos_sessao += pontos_jogo

    if le_rank[1].to_i < pontos_sessao
      salva_rank nome, pontos_sessao
    end

    avisa_pontos_sessao pontos_sessao
    break if nao_quer_jogar?
  end
end
