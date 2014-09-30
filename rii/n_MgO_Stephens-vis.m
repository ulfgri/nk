function [nk] = n_MgO_Stephens-vis(lambda)
%function [nk] = n_MgO_Stephens-vis(lambda)
%
% R. E. Stephens and I. H. Malitson. Index of refraction of magnesium oxide, <a href="http://dx.doi.org/10.6028/jres.049.025 "><i>J. Res. Natl. Bur. Stand.</i> <b>49</b> 249-252 (1952)</a>
%
% 30 °C. This formula gives more accurate values for visible than the other formula describing the entire transmission range.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.4047 0.7679];
    coeff = [2.957019 0.0216485 0 0.0158650 1 0 0 0 1 -0.0101373 2];
    nk = n_rii(lambda, coeff, range, 4);
end
