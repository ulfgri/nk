function [nk] = n_LiCaAlF6_Woods-o(lambda)
%function [nk] = n_LiCaAlF6_Woods-o(lambda)
%
% B. W. Woods et al.. Thermomechanical and thermo-optical properties of the LiCaAlF<sub>6</sub>:Cr<sup>3+</sup> laser material, <a href="http://dx.doi.org/10.1364/JOSAB.8.000970"><i>J. Opt. Soc. Am. B</i> <b>8</b>, 970-977 (1991)</a>.
%
% 26 °C. Ordinary ray (o).
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
    coeff = [1.92552 0.00492 0 0.00569 1 0 0 0 1 -0.00421 2];
    nk = n_rii(lambda, coeff, range, 4);
end
