# Questão 12: Calcular a precisão, recall e F1-score a partir da matriz de confusão.
def calcular_metricas(matriz_confusao)
    tp = matriz_confusao[1][1]
    tn = matriz_confusao[0][0]
    fp = matriz_confusao[0][1]
    fn = matriz_confusao[1][0]
  
    precisao = tp.to_f / (tp + fp)
    recall = tp.to_f / (tp + fn)
    f1_score = 2 * (precisao * recall) / (precisao + recall)
  
    { precisao: precisao, recall: recall, f1_score: f1_score }
  end
  
  previsoes = [1, 0, 1, 1, 0, 1, 0, 0, 1, 1]
  reais = [1, 0, 0, 1, 0, 1, 0, 1, 1, 0]
  matriz_confusao = calcular_matriz_confusao(previsoes, reais)
  metricas = calcular_metricas(matriz_confusao)
  puts "As métricas são: Precisão: #{metricas[:precisao]}, Recall: #{metricas[:recall]}, F1-score: #{metricas[:f1_score]}"
  