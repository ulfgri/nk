function [nk] = n_NaBr_Li(lambda)
%function [nk] = n_NaBr_Li(lambda)
%
% H. H. Li. Refractive index of alkali halides and its wavelength and temperature derivatives. <a href="http://dx.doi.org/10.1063/1.555536"><i>J. Phys. Chem. Ref. Data</i> <b>5</b>, 329-528 (1976)</a> and references therein.<br> <sup>*</sup> Sellmeier formula is derived by critical analysis of experimental data from several sources.
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
    range = [0.21 34];
    coeff = [0.06728 1.10463 0.125 0.18816 0.145 0.00243 0.176 0.24454 0.188 3.7960 74.63];
    nk = n_rii(lambda, coeff, range, 1);
end
