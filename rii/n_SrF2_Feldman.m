function [nk] = n_SrF2_Feldman(lambda)
%function [nk] = n_SrF2_Feldman(lambda)
%
% A. Feldman, D. Horowitz, R. Waxier and M. Dodge. <a href="http://refractiveindex.info/download/data/1978/Feldman 1978 - Optical materials characterization final technical report.pdf">Optical materials characterization final technical report, February 1, 1978.</a>
%
% 20 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.21 11.5];
    coeff = [0 0.67805894 0.05628989 0.37140533 0.10801027 3.3485284 39.906666];
    nk = n_rii(lambda, coeff, range, 1);
end
