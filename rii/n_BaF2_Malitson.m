function [nk] = n_BaF2_Malitson(lambda)
%function [nk] = n_BaF2_Malitson(lambda)
%
% I. H. Malitson. Refractive properties of barium fluoride, <a href="http://dx.doi.org/10.1364/JOSA.54.000628"><i>J. Opt. Soc. Am.</i> <b>54</b>, 628-630 (1964)</a>
%
% 25 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.2652 10.346];
    coeff = [0 0.643356 0.057789 0.506762 0.10968 3.8261 46.3864];
    nk = n_rii(lambda, coeff, range, 1);
end
