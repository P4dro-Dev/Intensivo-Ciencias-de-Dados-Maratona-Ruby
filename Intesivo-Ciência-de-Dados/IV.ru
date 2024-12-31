# Questão 4: Calcular a mediana de uma lista de números.
def calcular_mediana(numeros)
    sorted = numeros.sort
    len = sorted.length
    (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
  end
  
  numeros = [10, 20, 30, 40, 50]
  puts "A mediana é: #{calcular_mediana(numeros)}"
  