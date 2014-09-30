function [nk] = n_CdTe_DeBell-80K(lambda)
%function [nk] = n_CdTe_DeBell-80K(lambda)
%
% A. G. DeBell et al.. Cryogenic refractive indices and temperature coefficients of cadmium telluride from 6 µm to 22 µm, <a href="http://dx.doi.org/10.1364/AO.18.003114"><i>Appl. Opt.</i> <b>18</b>, 3114-3115 (1979)</a>
%
% 80 K (-193.1 °C)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [6 22];
    coeff = [0 6.0756642 0.1053945 2.8743304 4773.944];
    nk = n_rii(lambda, coeff, range, 2);
end
