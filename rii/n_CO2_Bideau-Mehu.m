function [nk] = n_CO2_Bideau-Mehu(lambda)
%function [nk] = n_CO2_Bideau-Mehu(lambda)
%
% A. Bideau-Mehu, Y. Guern, R. Abjean and A. Johannin-Gilles. Interferometric determination of the refractive index of carbon dioxide in the ultraviolet region, <a href="http://dx.doi.org/10.1016/0030-4018(73)90289-7"><i>Opt. Commun.</i> <b>9</b>, 432-434 (1973)</a>
%
% 273 K (0 °C).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.1807 1.6945];
    coeff = [0 6.99100e-2 166.175 1.44720e-3 79.609 6.42941e-5 56.3064 5.21306e-5 46.0196 1.46847e-6 0.0584738];
    nk = n_rii(lambda, coeff, range, 6);
end
