function [nk] = n_ZnGeP2_Zelmon-o(lambda)
%function [nk] = n_ZnGeP2_Zelmon-o(lambda)
%
% D. E. Zelmon et al.. Refractive-index measurements and Sellmeier coefficients for zinc germanium phosphide from 2 to 9 µm with implications for phase matching in optical frequency-conversion devices, <a href="http://dx.doi.org/10.1364/JOSAB.18.001307"><i>J. Opt. Soc. Am. B</i> <b>18</b>, 1307-1310 (2001)</a>
%
% Ordinary ray (o); 21–22 °C.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [2 9];
    coeff = [7.0409 1.68625 0.40824 0 1.2880 1 611.05];
    nk = n_rii(lambda, coeff, range, 2);
end
