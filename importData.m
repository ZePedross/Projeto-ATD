function dados = importData(n_ficheiros)
path = "ProjetoATD\archive\data\01\";
path_final = "_01_0.wav";
dados = cell (1,n_ficheiros);

Lsinal_max = -1;

for num = 0 : n_ficheiros-1
    
    nome_ficheiro = strcat(path, num2str(num),path_final);

    [sinal,Freq] = audioread(nome_ficheiro);
    
    sinal = retiraSilencio(sinal);

    if length(sinal) > Lsinal_max
        Lsinal_max = length(sinal);
    end
    
    sinal_normalizado = sinal/max(abs(sinal));
    dados{num+1}.dados_sinal = sinal_normalizado;
    dados{num+1}.dados_Freq = Freq;

end


for num = 1 : n_ficheiros 
    dados{num}.dados_sinal = adicionaSilencio(dados{num}.dados_sinal, Lsinal_max);
end


