function [nk] = n_GaN_Barker-o(lambda)
%function [nk] = n_GaN_Barker-o(lambda)
%
% A. S. Barker Jr. and M. Ilegems. Infrared Lattice Vibrations and Free-Electron Dispersion in GaN. <a href="http://dx.doi.org/10.1103/PhysRevB.7.743"><i>Phys. Rev. B</i> <b>7</b>, 743–750 (1973)</a>
%
% Ordinary ray (o); 300 K (27 °C).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.35 10];
    coeff = [2.60 1.75 0.256 4.1 17.86];
    nk = n_rii(lambda, coeff, range, 1);
end
