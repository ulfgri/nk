function [nk] = n_CaF2_Daimon-25(lambda)
%function [nk] = n_CaF2_Daimon-25(lambda)
%
% M. Daimon and A. Masumura. High-accuracy measurements of the refractive index and its temperature coefficient of calcium fluoride in a wide wavelength range from 138 to 2326 nm, <a href="http://dx.doi.org/10.1364/AO.41.005275"><i>Appl. Opt.</i> <b>41</b>, 5275-5281 (2002)</a>
%
% 25 °C, Nitrogen atmosphere
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.138 2.326];
    coeff = [0 0.437387571 0.00173799328 0.449211397 0.00782718648 0.152068715 0.0124086125 13.0020420 4039.76541];
    nk = n_rii(lambda, coeff, range, 2);
end
