function [nk] = n_SiC_Shaffer(lambda)
%function [nk] = n_SiC_Shaffer(lambda)
%
% P. T. B. Shaffer. Refractive index, dispersion, and birefringence of silicon carbide polytypes, <a href="http://dx.doi.org/10.1364/AO.10.001034"><i>Appl. Opt.</i> <b>10</b>, 1034-1036 (1971)</a>
%
% β-SiC (zincblende crystal structure)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.467 0.691];
    coeff = [2.5538 0.0342 -2];
    nk = n_rii(lambda, coeff, range, 5);
end
