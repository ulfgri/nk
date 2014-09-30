function [nk] = n_Pb5Ge3O11_Simon-o(lambda)
%function [nk] = n_Pb5Ge3O11_Simon-o(lambda)
%
% M. Simon et al.. Refractive indices of photorefractive bismuth titanate, barium-calcium titanate, bismuth germanium oxide, and lead germanate, <a href="http://dx.doi.org/10.1002/1521-396X(199702)159:2<559::AID-PSSA559>3.0.CO;2-0"><i>Phys. Stat. Sol.</i> <b>159</b>, 559–562 (1997)</a>
%
% Ordinary ray (o). 21 °C.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.45 0.70];
    coeff = [2.470 1.687 2 0.06146 1];
    nk = n_rii(lambda, coeff, range, 4);
end
