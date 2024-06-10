function [mu_l_min, omc_max, m] = imposta_loop_shaping(G, e_w, att_d, om_d, att_n, om_n, phi_m)
    
    % BASSA FREQUENZA
    mu_l_min = 1/e_w;
    fprintf("-----> Specifiche in bassa frequenza <-----");
    %fprintf("mu > %f", mu_l_min);

    mu_l_max = 1/att_d * om_d;
    %fprintf("\nmul > %.2f",mu_l_max);

    if(mu_l_max > mu_l_min)
        mu = mu_l_max;
    else
        mu = mu_l_min;
    end
    fprintf("\nmu_l > %.2f", mu);


    % ALTA FREQUENZA
    omc_max = att_n * om_n;
    fprintf("\n\n-----> Specifiche in alta frequenza <-----");
    fprintf("\nomega_c <= %.2f",omc_max);

    fprintf("\nphi_m >= %d", phi_m);
    fprintf("\nSmorzamento >= %.2f", phi_m/100);

	m = mu/omc_max;
    fprintf("\nm zero-polo [mu_l_min/omc] = %.2f\n",m);
    
end