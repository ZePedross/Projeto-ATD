function dados = Teste()
pasta = "archive\data\01\";
ficheiros = dir(pasta);
n_ficheiros = length(ficheiros)-2;

%Lsinal_max = -1;

dados = cell(1,length(n_ficheiros));

for i = 3 : length(ficheiros)
    %disp(ficheiros(i).name)

    nome_ficheiro = strcat(pasta,ficheiros(i).name);
    

    [sinal,Freq] = audioread(nome_ficheiro);
    
    sinal_normalizado = sinal/max(abs(sinal));
    %sinal_f = retiraSilencio(sinal_normalizado);

    %if length(sinal_f) > Lsinal_max
    %    Lsinal_max = length(sinal_f);
    %end
    dados{i-2}.dados_sinal = sinal_normalizado;
    dados{i-2}.dados_Freq = Freq;

end



%for j = 0: 9
%    k = (j)*50 + 1;
%    dados{j}.dados_sinal = adicionaSilencio(dados{k}.dados_sinal, Lsinal_max);
    
%end
