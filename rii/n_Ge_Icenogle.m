function [nk] = n_Ge_Icenogle(lambda)
%function [nk] = n_Ge_Icenogle(lambda)
%
% 1) Icenogle et al.. Refractive indexes and temperature coefficients of germanium and silicon <a http://dx.doi.org/10.1364/AO.15.002348"><i>Appl. Opt.</i> <b>15</b> 2348-2351 (1976)</a><br>2) N. P. Barnes and M. S. Piltch. Temperature-dependent Sellmeier coefficients and nonlinear optics average power limit for germanium <a href="http://dx.doi.org/10.1364/JOSA.69.000178"><i>J. Opt. Soc. Am.</i> <b>69</b> 178-180 (1979)</a><br>*Ref. 2 provides temperature-dependent Sellmeier equations based on the data from Ref. 1.
%
% 293 K (20 °C)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [2.5 12];
    coeff = [8.28156 6.72880 0.44105 0.21307 3870.1];
    nk = n_rii(lambda, coeff, range, 2);
end
