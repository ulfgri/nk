function [nk] = n_TlBr_Palik(lambda)
%function [nk] = n_TlBr_Palik(lambda)
%
% Handbook of Optical Constants of Solids, Edward D. Palik, ed. Academic Press, Boston, 1985
%
% 25 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.57 39.4];
    coeff = [0 3.7442390 0.2079603 0.9189162 0.3765643 12.5444602 165.6525518];
    nk = n_rii(lambda, coeff, range, 1);
end
