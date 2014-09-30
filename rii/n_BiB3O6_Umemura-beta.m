function [nk] = n_BiB3O6_Umemura-beta(lambda)
%function [nk] = n_BiB3O6_Umemura-beta(lambda)
%
% N. Umemura, K. Miyata, and K. Kato. New data on the optical properties of BiB<sub>3</sub>O<sub>6</sub>, <a href="    http://dx.doi.org/10.1016/j.optmat.2006.12.014"><i>Opt. Mat.</i> <b>30</b>, 532–534 (2007)</a>
%
% n<sub>β</sub>; 20 °C.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.48 3.1];
    coeff = [3.16940 0.03717 0 0.03483 1 0 0 0 1 -0.01827 2];
    nk = n_rii(lambda, coeff, range, 4);
end
