function [nk] = n_KI_Li(lambda)
%function [nk] = n_KI_Li(lambda)
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
    range = [0.25 50];
    coeff = [0.47285 0.16512 0.129 0.41222 0.175 0.44163 0.187 0.16076 0.219 0.33571 69.44 1.92474 98.04];
    nk = n_rii(lambda, coeff, range, 1);
end
