function [nk] = n_Bi4Ti3O12_Simon-a(lambda)
%function [nk] = n_Bi4Ti3O12_Simon-a(lambda)
%
% M. Simon et al.. Refractive indices of photorefractive bismuth titanate, barium-calcium titanate, bismuth germanium oxide, and lead germanate, <a href="http://dx.doi.org/10.1002/1521-396X(199702)159:2<559::AID-PSSA559>3.0.CO;2-0"><i>Phys. Stat. Sol.</i> <b>159</b>, 559–562 (1997)</a>
%
% Polarization parallel to a-axis. 21 °C.
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
    coeff = [0 5.299 0.04739];
    nk = n_rii(lambda, coeff, range, 2);
end
