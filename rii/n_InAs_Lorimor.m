function [nk] = n_InAs_Lorimor(lambda)
%function [nk] = n_InAs_Lorimor(lambda)
%
% O. G. Lorimor and W. G. Spitzer. Infrared refractive index and absorption of InAs and CdTe, <a href="http://dx.doi.org/10.1063/1.1714362"><i>J. Appl. Phys.</i> <b>36</b>, 1841-1844 (1965)</a>
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
    range = [3.7 31.3];
    coeff = [10.1 0.71 2.551 2.75 45.66];
    nk = n_rii(lambda, coeff, range, 1);
end
