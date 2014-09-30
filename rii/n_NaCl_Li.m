function [nk] = n_NaCl_Li(lambda)
%function [nk] = n_NaCl_Li(lambda)
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
    range = [0.2 30];
    coeff = [0.00055 0.19800 0.050 0.48398 0.100 0.38696 0.128 0.25998 0.158 0.08796 40.50 3.17064 60.98 0.30038 120.34];
    nk = n_rii(lambda, coeff, range, 1);
end
