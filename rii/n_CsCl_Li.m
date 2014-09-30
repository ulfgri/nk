function [nk] = n_CsCl_Li(lambda)
%function [nk] = n_CsCl_Li(lambda)
%
% H. H. Li. Refractive index of alkali halides and its wavelength and temperature derivatives. <a href="http://dx.doi.org/10.1063/1.555536"><i>J. Phys. Chem. Ref. Data</i> <b>5</b>, 329-528 (1976)</a> and references therein.<br>  <sup>*</sup> Sellmeier formula is derived by critical analysis of experimental data from several sources.
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
    range = [0.18 40];
    coeff = [0.33013 0.98369 0.119 0.00009 0.137 0.00018 0.145 0.30914 0.162 4.320 100.50];
    nk = n_rii(lambda, coeff, range, 1);
end
