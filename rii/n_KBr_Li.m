function [nk] = n_KBr_Li(lambda)
%function [nk] = n_KBr_Li(lambda)
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
    range = [0.20 42];
    coeff = [0.39408 0.79221 0.146 0.01981 0.173 0.15587 0.187 0.17673 60.61 2.06217 87.72];
    nk = n_rii(lambda, coeff, range, 1);
end
