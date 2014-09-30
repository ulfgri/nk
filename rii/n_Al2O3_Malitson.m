function [nk] = n_Al2O3_Malitson(lambda)
%function [nk] = n_Al2O3_Malitson(lambda)
%
% I. H. Malitson. Refraction and dispersion of synthetic sapphire, <a href="http://dx.doi.org/10.1364/JOSA.52.001377"><i>J. Opt. Soc. Am.</i> <b>52</b>, 1377-1379 (1962)</a>
%
% Synthetic sapphire, Ordinary ray (o), 24 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.2652 5.577];
    coeff = [0 1.023798 0.06144821 1.058264 0.1106997 5.280792 17.92656];
    nk = n_rii(lambda, coeff, range, 1);
end
