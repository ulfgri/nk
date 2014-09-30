function [nk] = n_CaF2_Malitson(lambda)
%function [nk] = n_CaF2_Malitson(lambda)
%
% I. H. Malitson. A redetermination of some optical properties of calcium fluoride, <a href="http://dx.doi.org/doi:10.1364/AO.2.001103"><i>Appl. Opt.</i> <b>2</b>, 1103-1107 (1963)</a>
%
% 24 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.23 9.7];
    coeff = [0 0.5675888 0.050263605 0.4710914 0.1003909 3.8484723 34.649040];
    nk = n_rii(lambda, coeff, range, 1);
end
