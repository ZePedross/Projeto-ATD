function dados10 = importData10(dados)

Lsinal_max = -1;
dados10 = cell(1,10);
for j = 0: 9
    k = (j)*50 + 1;

    dados10{j+1}.dados_Freq = dados{k}.dados_Freq;

    sinal = dados{k}.dados_sinal;

    %sinal_normalizado = sinal/max(abs(sinal));
    sinal_f = retiraSilencio(sinal);

    dados10{j+1}.dados_sinal = sinal_f;

    if length(sinal_f) > Lsinal_max
        Lsinal_max = length(sinal_f);
    end   
end

for i = 1 : length(dados10)
    dados10{i}.dados_sinal = adicionaSilencio(dados10{i}.dados_sinal, Lsinal_max);
end

