function [nk] = n_LiNbO3_Zelmon-e(lambda)
%function [nk] = n_LiNbO3_Zelmon-e(lambda)
%
% D. E. Zelmon, D. L. Small, and D. Jundt. Infrared corrected Sellmeier coefficients for congruently grown lithium niobate and 5 mol.% magnesium oxide-doped lithium niobate, <a href="http://dx.doi.org/10.1364/JOSAB.14.003319"><i>J. Opt. Soc. Am. B</i> <b>14</b>, 3319-3322 (1997)</a>
%
% 21 °C. Extraordinary ray (e). Congruently grown lithium niobate.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.4 5.0];
    coeff = [0 2.9804 0.02047 0.5981 0.0666 8.9543 416.08];
    nk = n_rii(lambda, coeff, range, 2);
end
