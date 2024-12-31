# Questão 5: Calcular a moda de uma lista de números.
def calcular_moda(numeros)
    frequencia = numeros.inject(Hash.new(0)) { |h, v| h[v] += 1; h }
    numeros.max_by { |v| frequencia[v] }
  end
  
  numeros = [10, 20, 30, 40, 50, 10, 20, 10]
  puts "A moda é: #{calcular_moda(numeros)}"
  