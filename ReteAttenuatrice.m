function [m, om_tau] = ReteAttenuatrice(M_primo,delta_phi_negativo)
    M = 1/M_primo;
    delta_phi = -delta_phi_negativo;
    om_tau = (M - cosd(delta_phi))/sind(delta_phi);
    m = om_tau * (sind(delta_phi)/(cosd(delta_phi)-1/M));
end