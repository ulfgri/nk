function [nk] = n_BaB2O4_Eimerl-o(lambda)
%function [nk] = n_BaB2O4_Eimerl-o(lambda)
%
% D. Eimerl et al.. Optical, mechanical, and thermal properties of barium borate , <a href="http://dx.doi.org/10.1063/1.339536"><i>J. Appl. Phys.</i>, <b>62</b>, 1968-1983 (1987)</a>
%
% Beta barium borate (ß-BaB<sub>2</sub>O<sub>4</sub>, BBO). Ordinary ray (o).
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
    coeff = [2.7405 0.0184 0 0.0179 1 0 0 0 1 -0.0155 2];
    nk = n_rii(lambda, coeff, range, 4);
end
