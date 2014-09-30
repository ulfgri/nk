function [nk] = n_AgGaSe2_Harasaki-e(lambda)
%function [nk] = n_AgGaSe2_Harasaki-e(lambda)
%
% A. Harasaki and K. Kato. New data on the nonlinear optical constant, phase-matching, and optical damage of AgGaS<sub>2</sub>, <a href="http://dx.doi.org/10.1143/JJAP.36.700"><i>Jap. J. Appl. Phys.</i>, <b>36</b>, 700-703 (1997)</a>
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
    range = [0.81 16];
    coeff = [6.6792 0.4598 0 0.2122 1 0 0 0 1 -0.00126 2];
    nk = n_rii(lambda, coeff, range, 4);
end
