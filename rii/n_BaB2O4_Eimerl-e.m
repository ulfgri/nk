function [nk] = n_BaB2O4_Eimerl-e(lambda)
%function [nk] = n_BaB2O4_Eimerl-e(lambda)
%
% D. Eimerl et al.. Optical, mechanical, and thermal properties of barium borate , <a href="http://dx.doi.org/10.1063/1.339536"><i>J. Appl. Phys.</i>, <b>62</b>, 1968-1983 (1987)</a>
%
% Beta barium borate (ß-BaB<sub>2</sub>O<sub>4</sub>, BBO). Extraordinary ray (e).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.22 1.06];
    coeff = [2.3730 0.0128 0 0.0156 1 0 0 0 1 -0.0044 2];
    nk = n_rii(lambda, coeff, range, 4);
end
