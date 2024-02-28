function sinalS = retiraSilencio(sinal, Freq)
       
    amostras = buffer(sinal, 100);
    energia = sum(amostras.^2, 1);
    media_e = mean(energia);
    limiar = (media_e) * 0.13 ;
    indice_inicio = find(energia >= limiar, 1);
    amostrasU = amostras(:,indice_inicio:end);

    sinalS = amostrasU(:);
  
        
end