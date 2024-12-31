# Questão 9: Calcular a correlação entre duas listas de números.
def calcular_correlacao(lista1, lista2)
    media1 = calcular_media(lista1)
    media2 = calcular_media(lista2)
    numerador = lista1.zip(lista2).map { |x, y| (x - media1) * (y - media2) }.sum
    denominador = Math.sqrt(lista1.map { |x| (x - media1) ** 2 }.sum * lista2.map { |y| (y - media2) ** 2 }.sum)
    correlacao = numerador / denominador
    correlacao
  end
  
  lista1 = [10, 20, 30, 40, 50]
  lista2 = [15, 25, 35, 45, 55]
  puts "A correlação é: #{calcular_correlacao(lista1, lista2)}"
  