# Questão 8: Normalizar uma lista de números (min-max normalization).
def normalizar(numeros)
    min = valor_minimo(numeros)
    max = valor_maximo(numeros)
    numeros.map { |num| (num - min).to_f / (max - min) }
  end
  
  numeros = [10, 20, 30, 40, 50]
  puts "A lista normalizada é: #{normalizar(numeros)}"
  