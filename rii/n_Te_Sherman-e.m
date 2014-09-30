function [nk] = n_Te_Sherman-e(lambda)
%function [nk] = n_Te_Sherman-e(lambda)
%
% 1) G. H. Sherman et al. Proceedings of the Symposium on Sub-millimeter Waves (Polytechnic Press, Brooklyn, 1970)<br>2) G. C. Bhar, Refractive index interpolation in phase-matching, <a href="http://dx.doi.org/10.1364/AO.15.0305_1"><i>Appl. Opt.</i> <b>15</b>, 305-307 (1976)</a><br>*Ref. 2 provides Sellmeier equation based on the data from Ref. 1
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
    range = [8.5 30.3];
    coeff = [0.9041 36.8133 1.0803 6.2456 10000];
    nk = n_rii(lambda, coeff, range, 2);
end
