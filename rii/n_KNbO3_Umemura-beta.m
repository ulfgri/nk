function [nk] = n_KNbO3_Umemura-beta(lambda)
%function [nk] = n_KNbO3_Umemura-beta(lambda)
%
% N. Umemura, K. Yoshida, and K. Kato. Phase-matching properties of KNbO<sub>3</sub> in the mid-infrared, <a href="    http://dx.doi.org/10.1364/AO.38.000991"><i>Appl Opt.</i> <b>38</b>, 991-994 (1999)</a>
%
% n<sub>β</sub>; 22 °C.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.40 5.3];
    coeff = [4.8353 0.12808 0 0.05674 1 0 0 0 1 -0.02528 2 1.8590e-6 4 -1.0689e-6 6];
    nk = n_rii(lambda, coeff, range, 4);
end
