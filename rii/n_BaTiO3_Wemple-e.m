function [nk] = n_BaTiO3_Wemple-e(lambda)
%function [nk] = n_BaTiO3_Wemple-e(lambda)
%
% S.H. Wemple, M. Didomenico Jr., and I. Camlibel. Dielectric and optical properties of melt-grown BaTiO<sub>3</sub>, <a href="    http://dx.doi.org/10.1016/0022-3697(68)90164-9"><i>J. Phys. Chem. Solids</i> <b>29</b>, 1797–1803 (1968)</a>
%
% Extraordinary ray (e). Room temperature
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.4 0.7];
    coeff = [0 4.064 0.211];
    nk = n_rii(lambda, coeff, range, 1);
end
