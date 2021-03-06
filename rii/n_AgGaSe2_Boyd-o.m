function [nk] = n_AgGaSe2_Boyd-o(lambda)
%function [nk] = n_AgGaSe2_Boyd-o(lambda)
%
% 1) G. D. Boyd et al.. Linear and nonlinear optical properties of some ternary selenides, <a href="http://dx.doi.org/10.1109/JQE.1972.1076900"><i>IEEE J. Quant. Electron.</i>, <b>8</b>, 900-908 (1972)</a><br>2) G. C. Bhar, Refractive index interpolation in phase-matching, <a href="http://dx.doi.org/10.1364/AO.15.0305_1"><i>Appl. Opt.</i> <b>15</b>, 305-307 (1976)</a><br>*Ref. 2 provides Sellmeier equation based on the data from Ref. 1
%
% Ordinary ray (e)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.725 13.5];
    coeff = [3.6453 2.2057 0.1879 1.8377 1600];
    nk = n_rii(lambda, coeff, range, 2);
end
