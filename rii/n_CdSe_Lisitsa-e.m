function [nk] = n_CdSe_Lisitsa-e(lambda)
%function [nk] = n_CdSe_Lisitsa-e(lambda)
%
% 1) M. P. Lisitsa et al.. Dispersion of the refractive indices and birefringence of CdS<sub>x</sub>Se<sub>1-x</sub> single crystals, <a href="http://dx.doi.org/10.1002/pssb.19690310146"><i>Phys. Status Solidi</i>, <b>31</b>, 389-399 (1969)</a><br>2) G. C. Bhar, Refractive index interpolation in phase-matching, <a href="http://dx.doi.org/10.1364/AO.15.0305_1"><i>Appl. Opt.</i> <b>15</b>, 305-307 (1976)</a><br>*Ref. 2 provides Sellmeier equation based on the data from Ref. 1
%
% Extraordinary ray (e)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [1.01 22.0];
    coeff = [3.2009 1.8875 0.2171 3.6461 3629];
    nk = n_rii(lambda, coeff, range, 2);
end
