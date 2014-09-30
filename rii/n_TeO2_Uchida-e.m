function [nk] = n_TeO2_Uchida-e(lambda)
%function [nk] = n_TeO2_Uchida-e(lambda)
%
% N. Uchida. Optical properties of single-crystal paratellurite (TeO<sub>2</sub>), <a href="http://dx.doi.org/10.1103/PhysRevB.4.3736"><i>Phys. Rev.B</i> <b>4</b>, 3736-3745 (1971)</a>
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
    range = [0.4 1.0];
    coeff = [0 2.823 0.1342 1.542 0.2631];
    nk = n_rii(lambda, coeff, range, 1);
end
