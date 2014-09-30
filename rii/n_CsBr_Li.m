function [nk] = n_CsBr_Li(lambda)
%function [nk] = n_CsBr_Li(lambda)
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
    range = [0.21 55];
    coeff = [0.14600 1.26628 0.120 0.01137 0.146 0.00975 0.160 0.00672 0.173 0.34557 0.187 3.76339 136.05];
    nk = n_rii(lambda, coeff, range, 1);
end
