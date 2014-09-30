function [nk] = n_LiIO3_Herbst-e(lambda)
%function [nk] = n_LiIO3_Herbst-e(lambda)
%
% Cited as "R. L. Herbst (private communication)" in M. M. Choy and R. L. Byer. Accurate second-order susceptibility measurements of visible and infrared nonlinear crystals, <a href="http://dx.doi.org/10.1103/PhysRevB.14.1693"><i>Phys. Rev. B</i> <b>14</b>, 1693–1706 (1976)</a>.
%
% Room temperature. Extraordinary ray (e).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.5461 5];
    coeff = [0.83086 1.08807 0.0313810 0.554582 158.76];
    nk = n_rii(lambda, coeff, range, 2);
end
