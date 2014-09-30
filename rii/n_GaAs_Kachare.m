function [nk] = n_GaAs_Kachare(lambda)
%function [nk] = n_GaAs_Kachare(lambda)
%
% A. H. Kachare, W. G. Spitzer, and J. E. Fredrickson. Refractive index of ion-implanted GaAs, <a href="http://dx.doi.org/10.1063/1.323292"><i>J. Appl. Phys.</i>, <b>47</b>, 4209-4212 (1976)</a>
%
% Room temperature
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [1.4 11];
    coeff = [2.5 7.4969 0.4082 1.9347 37.17];
    nk = n_rii(lambda, coeff, range, 1);
end
