function [nk] = n_CsI_Rodney(lambda)
%function [nk] = n_CsI_Rodney(lambda)
%
% W. S. Rodney. Optical properties of cesium iodide, <a href="http://dx.doi.org/10.1364/JOSA.45.000987"><i>J. Opt. Soc. Am.</i> <b>45</b>, 987-991 (1955)</a>
%
% 24 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.2967 50];
    coeff = [0 0.34617251 0.0229567 1.0080886 0.1466 0.28551800 0.1810 0.39743178 0.2120 3.3605359 161.0];
    nk = n_rii(lambda, coeff, range, 1);
end
