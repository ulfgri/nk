function [nk] = n_AlAs_Fern(lambda)
%function [nk] = n_AlAs_Fern(lambda)
%
% R. E. Fern and A. Onton. Refractive index of AlAs, <a href="http://dx.doi.org/10.1063/1.1660760"><i>J. Appl. Phys.</i> <b>42</b>, 3499-3500 (1971)</a>
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.56 2.2];
    coeff = [1.0792 6.0840 0.2822 1.900 27.62];
    nk = n_rii(lambda, coeff, range, 1);
end
