function [nk] = n_KTaO3_Fujii(lambda)
%function [nk] = n_KTaO3_Fujii(lambda)
%
% Y. Fujii and T. Sakudo. Dielectric and optical properties of KTaO<sub>3</sub>, <a href="http://dx.doi.org/10.1143/JPSJ.41.888"><i>J. Phys. Soc. Jpn.</i> <b>41</b>, 888-893 (1976)</a>.
%
% 300 K (27 °C)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.4 1.06];
    coeff = [0 3.591 0.193];
    nk = n_rii(lambda, coeff, range, 1);
end
