function [nk] = n_RbBr_Li(lambda)
%function [nk] = n_RbBr_Li(lambda)
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
    range = [0.21 50];
    coeff = [0.45931 0.16301 0.123 0.29841 0.146 0.17198 0.155 0.12186 0.178 0.13039 0.191 2.520 114.29];
    nk = n_rii(lambda, coeff, range, 1);
end
