function [nk] = n_KNbO3_Umemura-alpha(lambda)
%function [nk] = n_KNbO3_Umemura-alpha(lambda)
%
% N. Umemura, K. Yoshida, and K. Kato. Phase-matching properties of KNbO<sub>3</sub> in the mid-infrared, <a href="    http://dx.doi.org/10.1364/AO.38.000991"><i>Appl Opt.</i> <b>38</b>, 991-994 (1999)</a>
%
% n<sub>α</sub>; 22 °C.
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
    coeff = [4.4222 0.09972 0 0.05496 1 0 0 0 1 -0.01976 2];
    nk = n_rii(lambda, coeff, range, 4);
end
