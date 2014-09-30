function [nk] = n_N2_Griesmann(lambda)
%function [nk] = n_N2_Griesmann(lambda)
%
% U. Griesmann and J. H. Burnett. Refractivity of nitrogen gas in the vacuum ultraviolet, <a href="http://dx.doi.org/10.1364/OL.24.001699"><i>Opt. lett.</i> <b>24</b>, 1699-1701 (1999)</a>
%
% 0 °C; 101 325 Pa.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.145 0.270];
    coeff = [0 1.9662731 22086.66 2.7450825E-2 133.85688];
    nk = n_rii(lambda, coeff, range, 6);
end
