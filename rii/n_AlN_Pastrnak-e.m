function [nk] = n_AlN_Pastrnak-e(lambda)
%function [nk] = n_AlN_Pastrnak-e(lambda)
%
% J. Pastrňák and L. Roskovcová. Refraction index measurements on AlN single crystals, <a href="http://dx.doi.org/10.1002/pssb.19660140127"><i>Phys. Stat. Sol.</i> <b>14</b>, K5–K8 (1966)</a>
%
% Extraordinary ray (e).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.22 5.0];
    coeff = [2.0729 1.6173 0.1746 4.139 15.03];
    nk = n_rii(lambda, coeff, range, 1);
end
