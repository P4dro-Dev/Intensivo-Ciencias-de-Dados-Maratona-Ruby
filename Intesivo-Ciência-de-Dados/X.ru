# Questão 10: Calcular a regressão linear simples entre duas listas de números.
def calcular_regressao_linear(lista1, lista2)
    media1 = calcular_media(lista1)
    media2 = calcular_media(lista2)
    numerador = lista1.zip(lista2).map { |x, y| (x - media1) * (y - media2) }.sum
    denominador = lista1.map { |x| (x - media1) ** 2 }.sum
    slope = numerador / denominador
    intercept = media2 - slope * media1
    [slope, intercept]
  end
  
  lista1 = [10, 20, 30, 40, 50]
  lista2 = [15, 25, 35, 45, 55]
  slope, intercept = calcular_regressao_linear(lista1, lista2)
  puts "A equação da regressão linear é: y = #{slope}x + #{intercept}"
  