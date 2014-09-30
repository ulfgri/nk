function [nk] = n_LiCaAlF6_Woods-e(lambda)
%function [nk] = n_LiCaAlF6_Woods-e(lambda)
%
% B. W. Woods et al.. Thermomechanical and thermo-optical properties of the LiCaAlF<sub>6</sub>:Cr<sup>3+</sup> laser material, <a href="http://dx.doi.org/10.1364/JOSAB.8.000970"><i>J. Opt. Soc. Am. B</i> <b>8</b>, 970-977 (1991)</a>.
%
% 26 °C. Extraordinary ray (e).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.4 1.0];
    coeff = [1.92155 0.00494 0 0.00617 1 0 0 0 1 -0.00373 2];
    nk = n_rii(lambda, coeff, range, 4);
end
