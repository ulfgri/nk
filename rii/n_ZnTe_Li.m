function [nk] = n_ZnTe_Li(lambda)
%function [nk] = n_ZnTe_Li(lambda)
%
% H. H. Li. Refractive index of ZnS, ZnSe, and ZnTe and its wavelength and temperature derivatives, <a href="http://dx.doi.org/10.1063/1.555705"><i>J. Phys. Chem. Ref. Data</i> <b>13</b>, 103-150 (1984)</a><br>  <sup>*</sup> Sellmeier formula is derived by critical analysis of experimental data from several sources.
%
% 293 K (20 °C).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.55 30];
    coeff = [9.92 0.42530 0 0.37766 2 8414.13 0 56.5 2];
    nk = n_rii(lambda, coeff, range, 4);
end
