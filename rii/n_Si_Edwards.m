function [nk] = n_Si_Edwards(lambda)
%function [nk] = n_Si_Edwards(lambda)
%
% D. F. Edwards and E. Ochoa , Infrared Refractive Indexes of Silicon, <a href="http://dx.doi.org/10.1364/AO.19.004130"><i>Appl. Opt.</i>, <b>19</b>, 4130-4131 (1980)</a>
%
% 26 °C, crystal orientation <111>; 3-4 Ω-cm, n-type (phosporous-dopped)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [2.4373 25];
    coeff = [3.41983 0.159906 -0.123109 1.26878E-6 -1.95104E-9];
    nk = n_rii(lambda, coeff, range, 7);
end
