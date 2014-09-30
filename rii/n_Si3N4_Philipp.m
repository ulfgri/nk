function [nk] = n_Si3N4_Philipp(lambda)
%function [nk] = n_Si3N4_Philipp(lambda)
%
% 1) H. R. Philipp. Optical properties of silicon nitride, <a href="http://dx.doi.org/10.1149/1.2403440"><i>J. Electrochim. Soc.</i> <b>120</b>, 295-300 (1973)</a><br>2) T. Bååk. Silicon oxynitride; a material for GRIN optics, <a href="http://dx.doi.org/10.1364/AO.21.001069"><i>Appl. Optics</i> <b>21</b>, 1069-1072 (1982)</a><br> *Ref.2 provides dispersion formula based on the data from Ref. 1
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.207 1.24];
    coeff = [0 2.8939 0.13967];
    nk = n_rii(lambda, coeff, range, 1);
end
