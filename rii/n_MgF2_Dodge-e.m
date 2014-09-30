function [nk] = n_MgF2_Dodge-e(lambda)
%function [nk] = n_MgF2_Dodge-e(lambda)
%
% M. J. Dodge. Refractive properties of magnesium fluoride, <a href="http://dx.doi.org/10.1364/AO.23.001980"><i>Appl. Opt.</i> <b>23</b>, 1980-1985 (1984)</a>
%
% 19 °C. Extraordinary ray (e).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.2 7.0];
    coeff = [0 0.41344023 0.03684262 0.50497499 0.09076162 2.4904862 23.771995];
    nk = n_rii(lambda, coeff, range, 1);
end
