function [nk] = n_Ag3AsS3_Hulme-o(lambda)
%function [nk] = n_Ag3AsS3_Hulme-o(lambda)
%
% K. F. Hulme et al. Synthetic proustite (Ag<sub>3</sub>AsS<sub>3</sub>): a new crystal for optical mixing, <a href="http://dx.doi.org/10.1063/1.1754880"><i>Appl. Phys. Lett.</i> <b>10</b>, 133-135 (1967)</a>
%
% Ordinary ray (o), 20 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.63 4.6];
    coeff = [7.483 0.474 0 0.09 1 0 0 0 1 -0.0019 2];
    nk = n_rii(lambda, coeff, range, 4);
end
