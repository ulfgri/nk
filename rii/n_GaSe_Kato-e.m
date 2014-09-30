function [nk] = n_GaSe_Kato-e(lambda)
%function [nk] = n_GaSe_Kato-e(lambda)
%
% K. Kato et al.. Sellmeier and thermo-optic dispersion formulas for GaSe (Revisited). <a href="http://dx.doi.org/10.1364/AO.52.002325"><i>Appl. Opt.</i> <b>52</b>, 2325-2328 (2013)</a>
%
% 20 °C, Extraordinary ray (e)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.8 1620];
    coeff = [8.2477 0.2881 0 0.1669 1 4927.5 0 1990.1 1];
    nk = n_rii(lambda, coeff, range, 4);
end
