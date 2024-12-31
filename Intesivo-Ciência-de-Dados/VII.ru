# Questão 7: Calcular o desvio padrão de uma lista de números.
def calcular_desvio_padrao(numeros)
    Math.sqrt(calcular_variancia(numeros))
  end
  
  numeros = [10, 20, 30, 40, 50]
  puts "O desvio padrão é: #{calcular_desvio_padrao(numeros)}"
  