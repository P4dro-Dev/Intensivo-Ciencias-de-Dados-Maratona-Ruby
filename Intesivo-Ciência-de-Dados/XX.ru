# Questão 11: Calcular a matriz de confusão para um conjunto de previsões e rótulos reais.
def calcular_matriz_confusao(previsoes, reais)
    matriz = Hash.new { |hash, key| hash[key] = Hash.new(0) }
    previsoes.zip(reais).each { |prev, real| matriz[real][prev] += 1 }
    matriz
  end
  
  previsoes = [1, 0, 1, 1, 0, 1, 0, 0, 1, 1]
  reais = [1, 0, 0, 1, 0, 1, 0, 1, 1, 0]
  matriz_confusao = calcular_matriz_confusao(previsoes, reais)
  puts "A matriz de confusão é: #{matriz_confusao}"
  