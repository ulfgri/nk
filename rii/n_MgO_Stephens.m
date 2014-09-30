function [nk] = n_MgO_Stephens(lambda)
%function [nk] = n_MgO_Stephens(lambda)
%
% R. E. Stephens and I. H. Malitson. Index of refraction of magnesium oxide, <a href="http://dx.doi.org/10.6028/jres.049.025 "><i>J. Res. Natl. Bur. Stand.</i> <b>49</b> 249-252 (1952)</a>
%
% 23.3 °C. Formula for entire transmission range; use the other formula for  more accurate index values in the visible.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.36 5.4];
    coeff = [2.956362 0.02195770 0 0.01428322 1 0 0 0 1 -0.01062387 2 -0.0000204968 4];
    nk = n_rii(lambda, coeff, range, 4);
end
