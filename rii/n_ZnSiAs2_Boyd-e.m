function [nk] = n_ZnSiAs2_Boyd-e(lambda)
%function [nk] = n_ZnSiAs2_Boyd-e(lambda)
%
% 1) G. D. Boyd et al.. Linear and nonlinear optical properties of ternary A<sup>II</sup>B<sup>IV</sup>C<sub>2</sub><sup>V</sup> chalcopyrite semiconductors, <a href="http://dx.doi.org/10.1109/JQE.1972.1076982"><i>IEEE J. Quant. Electron.</i>, <b>8</b>, 419-426 (1972)</a><br>2) G. C. Bhar. Refractive index interpolation in phase-matching, <a href="http://dx.doi.org/10.1364/AO.15.0305_1"><i>Appl. Opt.</i> <b>15</b>, 305-307 (1976)</a><br>*Ref. 2 provides Sellmeier equation based on the data from Ref. 1
%
% Extraordinary ray(e)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.7 11.5];
    coeff = [3.9091 5.5565 0.1578 1.1287 700];
    nk = n_rii(lambda, coeff, range, 2);
end
