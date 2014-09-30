function [nk] = n_HgS_Bond-e(lambda)
%function [nk] = n_HgS_Bond-e(lambda)
%
% 1) W. L. Bond et al.. Refractive indices of HgS (Cinnabar) between 0.62 and 11 μ, <a href="http://dx.doi.org/10.1063/1.1709079"><i>J. Appl. Phys.</i>, <b>38</b>, 4090-4091 (1967)</a><br>2) G. C. Bhar. Refractive index interpolation in phase-matching, <a href="http://dx.doi.org/10.1364/AO.15.0305_1"><i>Appl. Opt.</i> <b>15</b>, 305-307 (1976)</a><br>*Ref. 2 provides Sellmeier equation based on the data from Ref. 1
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
    range = [0.62 11.0];
    coeff = [3.0101 4.3736 0.1284 1.5604 705];
    nk = n_rii(lambda, coeff, range, 2);
end
