function [nk] = n_AgGaS2_Boyd-o(lambda)
%function [nk] = n_AgGaS2_Boyd-o(lambda)
%
% 1) G. D. Boyd et al.. Linear and nonlinear optical properties of AgGaS<sub>2</sub>, CuGaS<sub>2</sub>, and CuInS<sub>2</sub>, and theory of the wedge technique for the measurement of nonlinear coefficients, <a href="http://dx.doi.org/10.1109/JQE.1971.1076588"><i>IEEE J. Quant. Electron.</i>, <b>7</b>, 563-573  (1971)</a><br>2) G. C. Bhar. Refractive index interpolation in phase-matching, <a href="http://dx.doi.org/10.1364/AO.15.0305_1"><i>Appl. Opt.</i> <b>15</b>, 305-307 (1976)</a><br>*Ref. 2 provides Sellmeier equation based on the data from Ref. 1
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
    range = [0.49 12];
    coeff = [2.6280 2.1686 0.1003 2.1753 950];
    nk = n_rii(lambda, coeff, range, 2);
end
