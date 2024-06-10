function verifica_step_function(F)
    fprintf("\n-----> Caratteristiche Gradino <-----\n");
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
   
    figure;
    step(F);       
end