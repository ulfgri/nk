function [nk] = n_LiNbO3_Zelmon-o(lambda)
%function [nk] = n_LiNbO3_Zelmon-o(lambda)
%
% D. E. Zelmon, D. L. Small, and D. Jundt. Infrared corrected Sellmeier coefficients for congruently grown lithium niobate and 5 mol.% magnesium oxide-doped lithium niobate, <a href="http://dx.doi.org/10.1364/JOSAB.14.003319"><i>J. Opt. Soc. Am. B</i> <b>14</b>, 3319-3322 (1997)</a>
%
% 21 °C. Ordinary ray (o). Congruently grown lithium niobate.
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
    coeff = [0 2.6734 0.01764 1.2290 0.05914 12.614 474.60];
    nk = n_rii(lambda, coeff, range, 2);
end
