function [nk] = n_PbMoO4_Malitson-o(lambda)
%function [nk] = n_PbMoO4_Malitson-o(lambda)
%
% I. H. Malitson, as cited in Handbook of Optics, 3rd edition, Vol. 4. McGraw-Hill 2009. Data fit by Handbook of Optics.
%
% Ordinary ray (o)
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
    coeff = [0 3.54642 0.18518 0.58270 0.033764];
    nk = n_rii(lambda, coeff, range, 1);
end
