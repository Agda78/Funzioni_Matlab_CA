function [m, om_tau] = ReteAnticipatrice(M,delta_phi)
    om_tau = (M - cosd(delta_phi))/sind(delta_phi);
    m = om_tau * (sind(delta_phi)/(cosd(delta_phi)-(1/M)));
end