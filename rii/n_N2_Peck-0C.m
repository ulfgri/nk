function [nk] = n_N2_Peck-0C(lambda)
%function [nk] = n_N2_Peck-0C(lambda)
%
% E. R. Peck and B. N. Khanna. Dispersion of Nitrogen, <a href="http://dx.doi.org/10.1364/JOSA.56.001059"><i>J. Opt. Soc. Am.</i> <b>56</b>, 1059–1063 (1963)</a>
%
% 0 °C.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.4679 2.0586];
    coeff = [6.8552E-5 3.243157E-2 144];
    nk = n_rii(lambda, coeff, range, 6);
end
