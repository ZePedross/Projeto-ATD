%cirar graficos (Ponto 2)
dados = Teste();
dados10 = importData10(dados);

for num = 1 : 10
    criaGraf(dados10{num},num-1) 
end
EnergiaMax = EnergiaMaxDIgito(dados);

