function [nk] = n_CsI_Li(lambda)
%function [nk] = n_CsI_Li(lambda)
%
% H. H. Li. Refractive index of alkali halides and its wavelength and temperature derivatives. <a href="http://dx.doi.org/10.1063/1.555536"><i>J. Phys. Chem. Ref. Data</i> <b>5</b>, 329-528 (1976)</a> and references therein.<br> <sup>*</sup> Sellmeier formula is derived by fitting experimental data from several sources.
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
    range = [0.25 67];
    coeff = [0.27587 0.68689 0.130 0.26090 0.147 0.06256 0.163 0.06527 0.177 0.14991 0.185 0.51818 0.206 0.01918 0.218 3.38229 161.29];
    nk = n_rii(lambda, coeff, range, 1);
end
