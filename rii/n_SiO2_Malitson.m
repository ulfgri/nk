function [nk] = n_SiO2_Malitson(lambda)
%function [nk] = n_SiO2_Malitson(lambda)
%
% I. H. Malitson. Interspecimen Comparison of the Refractive Index of Fused Silica, <a href="http://dx.doi.org/10.1364/JOSA.55.001205"><i>J. Opt. Soc. Am.</i> <b>55</b>, 1205-1208 (1965)</a>
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
    range = [0.21 3.71];
    coeff = [0 0.6961663 0.0684043 0.4079426 0.1162414 0.8974794 9.896161];
    nk = n_rii(lambda, coeff, range, 1);
end
