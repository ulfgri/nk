function [nk] = n_BeO_Edwards-o(lambda)
%function [nk] = n_BeO_Edwards-o(lambda)
%
% D. F. Edwards and R. H. White, "Beryllium Oxide," in E. D. Palik (ed.), Handbook of Optical Constants of Solids II, Academic Press, Orlando, 1991, pp. 805-814.
%
% Ordinary ray (o). Room temperature.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.44 7.0];
    coeff = [0 1.92274 0.07908 1.24209 9.7131];
    nk = n_rii(lambda, coeff, range, 1);
end
