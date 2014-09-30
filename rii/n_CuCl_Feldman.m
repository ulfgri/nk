function [nk] = n_CuCl_Feldman(lambda)
%function [nk] = n_CuCl_Feldman(lambda)
%
% A. Feldman and D. Horowitz. Refractive Index of Cuprous Chloride, <a href="http://dx.doi.org/10.1364/JOSA.59.001406"><i>J. Opt. Soc. Am.</i> <b>59</b>, 1406-1408 (1969)</a>
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
    range = [0.43 2.5];
    coeff = [3.580 0.03162 2 0.1642 1 0 0 0 1 0.09288 -2];
    nk = n_rii(lambda, coeff, range, 4);
end
