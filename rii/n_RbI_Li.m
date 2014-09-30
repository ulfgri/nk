function [nk] = n_RbI_Li(lambda)
%function [nk] = n_RbI_Li(lambda)
%
% H. H. Li. Refractive index of alkali halides and its wavelength and temperature derivatives. <a href="http://dx.doi.org/10.1063/1.555536"><i>J. Phys. Chem. Ref. Data</i> <b>5</b>, 329-528 (1976)</a> and references therein.<br> <sup>*</sup>  Sellmeier formula is derived by critical analysis of experimental data from several sources.
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
    range = [0.24 64];
    coeff = [0.60563 0.00947 0.120 0.01073 0.134 0.00136 0.156 0.41864 0.179 0.41771 0.187 0.13707 0.223 2.36091 132.45];
    nk = n_rii(lambda, coeff, range, 1);
end
