def le_rank
  arquivo = File.read "rank.txt"
  campeao = arquivo.split "\n"
end

def salva_rank(nome, pontos)
  conteudo = "#{nome}\n#{pontos}"
  File.write "rank.txt", conteudo
end