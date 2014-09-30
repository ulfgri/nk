function [nk] = n_CsLiB6O10_Sasaki-o(lambda)
%function [nk] = n_CsLiB6O10_Sasaki-o(lambda)
%
% T. Sasaki, Y. Mori, and M. Yoshimura. Progress in the growth of a CsLiB<sub>6</sub>O<sub>10</sub> crystal and its application to ultraviolet light generation, <a href="http://dx.doi.org/10.1016/S0925-3467(02)00316-6"><i>Opt. Mat.</i> <b>23</b>, 343–351 (2003)</a>
%
% Ordinary ray (o). Room temperature.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.19 2.75];
    coeff = [2.2104 0.01018 0 0.01424 1 0 0 0 1 -0.01258 2];
    nk = n_rii(lambda, coeff, range, 4);
end
