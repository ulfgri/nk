function [nk] = n_CdS_Bieniewski-e(lambda)
%function [nk] = n_CdS_Bieniewski-e(lambda)
%
% 1) T. M. Bieniewski and S. J. Czyzak. Refractive indexes of single hexagonal ZnS and CdS crystals, <a href="http://dx.doi.org/10.1364/JOSA.53.000496"><i>J. Opt. Soc. Am.</i> <b>53</b>, 496-497 (1963)</a><br>2) M. Sanchez Gomez, J. M. Guerra, and F. Vilches. Weighted nonlinear regression analysis of a Sellmeier expansion: comparison of several nonlinear fits of CdS dispersion, <a href="http://dx.doi.org/10.1364/AO.24.001147"><i>Appl. Opt.</i> <b>24</b>, 1147-1150 (1985)</a></br>* Ref. 2 provides Sellmeier equation based on the data from ref. 1
%
% Extraordinary ray (e). 25 °C.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.51 1.4];
    coeff = [5.2599 0.20865 0 0.10799 1 0.027527 0 0.23305 1];
    nk = n_rii(lambda, coeff, range, 4);
end
