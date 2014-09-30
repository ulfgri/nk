function [nk] = n_Dy2O3_Medenbach(lambda)
%function [nk] = n_Dy2O3_Medenbach(lambda)
%
% O. Medenbach, D. Dettmar, R. D. Shannon, R. X. Fischer and W. M. Yen. Refractive index and optical dispersion of rare earth oxides using a small-prism technique, <a href="http://dx.doi.org/10.1088/1464-4258/3/3/303"><i>J. Opt. A: Pure Appl. Opt.</i> <b>3</b>, 174-177, 2001</a>
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.435 0.644];
    coeff = [0 2.7375 0.019984];
    nk = n_rii(lambda, coeff, range, 2);
end
