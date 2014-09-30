function [nk] = n_GaAs_Skauli(lambda)
%function [nk] = n_GaAs_Skauli(lambda)
%
% T. Skauli, P. S. Kuo, K. L. Vodopyanov, T. J. Pinguet, O. Levi, L. A. Eyres, J. S. Harris, M. M. Fejer, B. Gerard, L. Becouarn, and E. Lallier. Improved dispersion relations for GaAs and applications to nonlinear optics, <a href="http://dx.doi.org/10.1063/1.1621740"><i>J. Appl. Phys.</i>, <b>94</b>, 6447-6455 (2003)</a>
%
% 22 °C. See the original publication for temperature dependence of refractive index.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.97 17];
    coeff = [4.372514 5.466742 0.4431307 0.02429960 0.8746453 1.957522 36.9166];
    nk = n_rii(lambda, coeff, range, 1);
end
