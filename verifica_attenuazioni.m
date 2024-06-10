function verifica_attenuazioni(L,om_d, om_n)
    fprintf("\n------> Valutazione Attenuazioni <------\n");
    eps_d = bode(L,om_d);
    eps_d = 1/eps_d;
    fprintf("Attenuazione della d(t): %.2f\n", eps_d);

    eps_n = bode(L,om_n);
    fprintf("Attenuazione della n(t): %.2f\n",eps_n);
end