function [nk] = n_Y2O3_Nigara(lambda)
%function [nk] = n_Y2O3_Nigara(lambda)
%
% Y. Nigara. Measurement of the optical constants of yttrium oxide, <a href="http://dx.doi.org/10.1143/JJAP.7.404"><i>Jpn. J. Appl. Phys.</i> <b>7</b>, 404-408 (1968)</a>
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.25 9.6];
    coeff = [0 2.578 0.1387 3.935 22.936];
    nk = n_rii(lambda, coeff, range, 1);
end
