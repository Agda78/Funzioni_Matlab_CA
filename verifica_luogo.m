function verifica_luogo(G,R,opt)
    L = R*G;
    F = L/(1+L);
    fprintf("-----> Verifica del luogo <-----\n");
    % Tempo di assestamento
    info = stepinfo(F, 'SettlingTimeThreshold', 0.01);
    Ta1 = info.SettlingTime;
    fprintf("Ta1 = %.2f s\n", Ta1);
    info = stepinfo(F, 'SettlingTimeThreshold', 0.05);
    Ta5 = info.SettlingTime;
    fprintf("Ta5 = %.2f s\n", Ta5);
    
    % Sovraelongazione percentuale
    s_perc = info.Overshoot;
    fprintf("s%% = %.2f %%\n", s_perc);
    
    % Grafico gradino
    if nargin > 2
      figure;
      step(F);
            
      % Luogo della L
      figure;
      rlocus(L);
    end
    
        
end