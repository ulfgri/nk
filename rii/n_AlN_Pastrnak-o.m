function [nk] = n_AlN_Pastrnak-o(lambda)
%function [nk] = n_AlN_Pastrnak-o(lambda)
%
% J. Pastrňák and L. Roskovcová. Refraction index measurements on AlN single crystals, <a href="http://dx.doi.org/10.1002/pssb.19660140127"><i>Phys. Stat. Sol.</i> <b>14</b>, K5–K8 (1966)</a>
%
% Ordinary ray (o).
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
    coeff = [2.1399 1.3786 0.1715 3.861 15.03];
    nk = n_rii(lambda, coeff, range, 1);
end
