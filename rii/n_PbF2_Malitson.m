function [nk] = n_PbF2_Malitson(lambda)
%function [nk] = n_PbF2_Malitson(lambda)
%
% I. H. Malitson and M. J. Dodge. Refraction and dispersion of lead fluoride, <j>J. Opt. Soc. Am.</i> <b>59</b>, 500A (1969) (as cited ib Handbook of Optics, 2nd edition, Vol. 2. McGraw-Hill 1994(
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.3 11.9];
    coeff = [0 0.66959342 0.00034911 1.3086319 0.17144455 0.01670641 0.28125513 2007.8865 796.67469];
    nk = n_rii(lambda, coeff, range, 1);
end
