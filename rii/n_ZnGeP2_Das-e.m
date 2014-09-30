function [nk] = n_ZnGeP2_Das-e(lambda)
%function [nk] = n_ZnGeP2_Das-e(lambda)
%
% S. Das et al.. Linear and nonlinear optical properties of ZnGeP<sub>2</sub> crystal for infrared laser device applications: Revisited, <a href="http://dx.doi.org/10.1364/AO.42.004335"><i>Appl. Opt.</i> <b>42</b>, 4335-4340 (2003)</a>
%
% Extraordinary ray (e)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [1.32 11];
    coeff = [2.65014 6.310153 0.125099 1.731381 900];
    nk = n_rii(lambda, coeff, range, 2);
end
