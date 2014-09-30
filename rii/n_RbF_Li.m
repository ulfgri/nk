function [nk] = n_RbF_Li(lambda)
%function [nk] = n_RbF_Li(lambda)
%
% H. H. Li. Refractive index of alkali halides and its wavelength and temperature derivatives. <a href="http://dx.doi.org/10.1063/1.555536"><i>J. Phys. Chem. Ref. Data</i> <b>5</b>, 329-528 (1976)</a> and references therein.<br> <sup>*</sup> Sellmeier formula derivation is based on a single data point and knowledge of the dielectric constants and the characteristic absorption peaks.
%
% 297 K (24 °C).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.15 25];
    coeff = [0.395 0.535 0.124 4.55 63.29];
    nk = n_rii(lambda, coeff, range, 1);
end
