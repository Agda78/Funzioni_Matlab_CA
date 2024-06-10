function banda_discreta(Fz, omc)
    omc_starter = omc;
    band = 0;
    while band <= 2.95
        
        omc_starter = omc_starter + 0.01;
        band = bode(Fz, omc_starter);
        band = -mag2db(band);
    end
    
    fprintf("Banda del sistema:[0; %.2f]",omc_starter);
end