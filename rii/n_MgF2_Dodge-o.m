function [nk] = n_MgF2_Dodge-o(lambda)
%function [nk] = n_MgF2_Dodge-o(lambda)
%
% M. J. Dodge. Refractive properties of magnesium fluoride, <a href="http://dx.doi.org/10.1364/AO.23.001980"><i>Appl. Opt.</i> <b>23</b>, 1980-1985 (1984)</a>
%
% 19 °C. Ordinary ray (o).
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
    coeff = [0 0.48755108 0.04338408 0.39875031 0.09461442 2.3120353 23.793604];
    nk = n_rii(lambda, coeff, range, 1);
end
