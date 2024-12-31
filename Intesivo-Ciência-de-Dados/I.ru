# Questão 1: Calcular a média de uma lista de números.
def calcular_media(numeros)
    soma = numeros.sum
    media = soma.to_f / numeros.size
    media
  end
  
  numeros = [10, 20, 30, 40, 50]
  puts "A média é: #{calcular_media(numeros)}"
  