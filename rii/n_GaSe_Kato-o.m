function [nk] = n_GaSe_Kato-o(lambda)
%function [nk] = n_GaSe_Kato-o(lambda)
%
% K. Kato et al.. Sellmeier and thermo-optic dispersion formulas for GaSe (Revisited). <a href="http://dx.doi.org/10.1364/AO.52.002325"><i>Appl. Opt.</i> <b>52</b>, 2325-2328 (2013)</a>
%
% 20 °C, Ordinary ray (o)
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
    coeff = [10.6409 0.3788 0 0.1232 1 7090.7 0 2216.3 1];
    nk = n_rii(lambda, coeff, range, 4);
end
