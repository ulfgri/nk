function [nk] = n_TiO2_Devore-o(lambda)
%function [nk] = n_TiO2_Devore-o(lambda)
%
% J. R. Devore. Refractive Indices of Rutile and Sphalerite, <a href="http://dx.doi.org/10.1364/JOSA.41.000416"><i>J. Opt. Soc. Am.</i> <b>41</b>, 416-419 (1951)</a>
%
% Ordinary ray (o); Room temperature.
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
    coeff = [5.913 0.2441 0 0.0803 1];
    nk = n_rii(lambda, coeff, range, 4);
end
