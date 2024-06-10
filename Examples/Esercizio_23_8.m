s = tf('s');
% Imposto il sistema
G = (10 + s)/(s+1)/(s + 20);

% Specifiche
e_inf = 0.05;
att_d = 1/30;
om_d = 0.5;
att_n = 1/10;
om_n = 50;
phi_m_d = 50;
% Regolatore strettamente proprio

[mu_l_min, omc_max] = imposta_loop_shaping(G,e_inf,att_d,om_d,att_n,om_n,phi_m_d);

mu = 25;
omc = 5;

m_zp = mu/omc;
tau_max = 1/om_d;
tau_min = m_zp/omc;

fprintf("Scegliere una tau: %.2f <= tau <= %.2f\n",tau_min,tau_max);

tau = 1.2;

Lzp = (1 + s*(tau/m_zp))/(1+s*tau);

L = Lzp * mu/s;

margin(L);

F = L/(1+L);
verifica_step_function(F);

verifica_attenuazioni(L, om_d, om_n);

R = L/G;
R = minreal(zpk(R))

% Vogliamo un regolatore strettamente proprio
% Quindi dobbiamo aggiungere un polo in alta frequenza

% Lo scelgo in modo che sia lontano più di una devade dalla omc
posizione_polo = 100;

R = R * 1/(1+s/posizione_polo);
R = minreal(zpk(R))

L = R * G;
margin(L);

F = L/(1+L);
verifica_step_function(F);

verifica_attenuazioni(L, om_d, om_n);
