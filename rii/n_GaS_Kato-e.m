function [nk] = n_GaS_Kato-e(lambda)
%function [nk] = n_GaS_Kato-e(lambda)
%
% K. Kato and N. Umemura. Sellmeier equations for GaS and GaSe and their applications to the nonlinear optics in GaS<sub>x</sub>Se<sub>1−x</sub>, <a href="http://dx.doi.org/10.1364/OL.36.000746"><i>Opt. Lett.</i> <b>36</b>, 746-747 (2011)</a>
%
% Room temperature. Extraordinary ray (e).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.633 10.591];
    coeff = [5.30813 0.20852 0 0.05251 1 101.479 0 302.223 1];
    nk = n_rii(lambda, coeff, range, 4);
end
