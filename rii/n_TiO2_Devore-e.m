function [nk] = n_TiO2_Devore-e(lambda)
%function [nk] = n_TiO2_Devore-e(lambda)
%
% J. R. Devore. Refractive Indices of Rutile and Sphalerite, <a href="http://dx.doi.org/10.1364/JOSA.41.000416"><i>J. Opt. Soc. Am.</i> <b>41</b>, 416-419 (1951)</a>
%
% Extraordinary ray (e); Room temperature
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.43 1.53];
    coeff = [7.197 0.3322 0 0.0843 1];
    nk = n_rii(lambda, coeff, range, 4);
end
