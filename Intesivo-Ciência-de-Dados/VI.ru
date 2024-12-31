# Questão 6: Calcular a variância de uma lista de números.
def calcular_variancia(numeros)
    media = calcular_media(numeros)
    soma_dos_quadrados = numeros.inject(0) { |soma, x| soma + (x - media) ** 2 }
    variancia = soma_dos_quadrados / (numeros.size - 1).to_f
    variancia
  end
  
  numeros = [10, 20, 30, 40, 50]
  puts "A variância é: #{calcular_variancia(numeros)}"
  