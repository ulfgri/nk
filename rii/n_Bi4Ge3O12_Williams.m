function [nk] = n_Bi4Ge3O12_Williams(lambda)
%function [nk] = n_Bi4Ge3O12_Williams(lambda)
%
% P. A. Williams et al. Optical, thermo-optic, electro-optic, and photoelastic properties of bismuth germanate Bi<sub>4</sub>Ge<sub>3</sub>O<sub>12</sub>, <a href="http://dx.doi.org/10.1364/AO.35.003562"><i>Appl. Opt.</i> <b>35</b>, 3562-3569 (1996)</a>
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.305 1.00];
    coeff = [0 3.1218393 0.1807];
    nk = n_rii(lambda, coeff, range, 1);
end
