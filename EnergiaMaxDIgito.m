function maxEdigito = EnergiaMaxDIgito(dados)
maxEdigito = cell (1,10);
for i = 1 : length(dados)
    sinal = dados{i}.dados_sinal;
    maxEdigito{i} = sum(sinal.^2);
    disp(maxEdigito{i});
end