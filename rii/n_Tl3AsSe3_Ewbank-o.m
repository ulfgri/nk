function [nk] = n_Tl3AsSe3_Ewbank-o(lambda)
%function [nk] = n_Tl3AsSe3_Ewbank-o(lambda)
%
% M.D. Ewbank et al.. The temperature dependence of optical and mechanical properties of Tl<sub>3</sub>AsSe<sub>3</sub>, <a href="http://dx.doi.org/10.1063/1.328128"><i>J. Appl. Phys.</i> <b>51</b>, 3848-3852  (1980)</a>
%
% Ordinary ray (o)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [2 12];
    coeff = [0 10.210 0.444 0.522 25.0];
    nk = n_rii(lambda, coeff, range, 1);
end
