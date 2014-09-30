function [nk] = n_PbMoO4_Malitson-e(lambda)
%function [nk] = n_PbMoO4_Malitson-e(lambda)
%
% I. H. Malitson, as cited in Handbook of Optics, 3rd edition, Vol. 4. McGraw-Hill 2009. Data fit by Handbook of Optics.
%
% Extraordinary ray (e)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.44 1.08];
    coeff = [0 3.52555 0.17950 0.20660 0.32537];
    nk = n_rii(lambda, coeff, range, 1);
end
