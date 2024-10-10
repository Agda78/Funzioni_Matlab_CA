function banda_discreta_generale(Fz, omc)
    omc_starter = omc;
    
    delta = 3.0;
    
    % Calcola il valore iniziale del guadagno a pulsazione 0
    mag_initial = bode(Fz, 0.1);
    ref_db = -mag2db(mag_initial);  % Convertiamo il valore iniziale in dB
    band = ref_db;
    % Controlla quando il guadagno è sceso di 3 dB rispetto al valore iniziale
    while abs(delta - abs(band - ref_db)) >= 0.01
        
        omc_starter = omc_starter + 0.01;
        mag_current = bode(Fz, omc_starter);
        band = -mag2db(mag_current);
        
        %fprintf("Frequenza attuale: %.2f Hz, Attenuazione: %.2f dB\n", omc_starter, band);
    end
    
    fprintf("\n\rBanda del sistema: [0; %.2f] Hz\n", omc_starter);
end
