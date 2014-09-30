function [nk] = n_Te_Caldwell-e(lambda)
%function [nk] = n_Te_Caldwell-e(lambda)
%
% 1) R. S. Caldwell and H. Y. Fan, Optical properties of tellurium and selenium, <a href="http://dx.doi.org/10.1103/PhysRev.114.664"><i>Phys. Rev.</i>, <b>114</b>, 664-675 (1959)</a><br>2) G. C. Bhar, Refractive index interpolation in phase-matching, <a href="http://dx.doi.org/10.1364/AO.15.0305_1"><i>Appl. Opt.</i> <b>15</b>, 305-307 (1976)</a><br>*Ref. 2 provides Sellmeier equation based on the data from Ref. 1
%
% Extraordinary ray
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [4 14];
    coeff = [28.5222 9.3068 2.5766 9.2350 13521];
    nk = n_rii(lambda, coeff, range, 2);
end
