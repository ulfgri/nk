function [nk] = n_He_Mansfield(lambda)
%function [nk] = n_He_Mansfield(lambda)
%
% C. R. Mansfield and E. R. Peck. Dispersion of helium, <a href="http://dx.doi.org/10.1364/JOSA.59.000199"><i>J. Opt. Soc. Am.</i> <b>59</b>, 199-203 (1969)</a>
%
% 760 torr (101 kPa); 273 K (0 °C).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.4801 2.0586];
    coeff = [0 0.01470091 423.98];
    nk = n_rii(lambda, coeff, range, 6);
end
