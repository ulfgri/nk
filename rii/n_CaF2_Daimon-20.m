function [nk] = n_CaF2_Daimon-20(lambda)
%function [nk] = n_CaF2_Daimon-20(lambda)
%
% M. Daimon and A. Masumura. High-accuracy measurements of the refractive index and its temperature coefficient of calcium fluoride in a wide wavelength range from 138 to 2326 nm, <a href="http://dx.doi.org/10.1364/AO.41.005275"><i>Appl. Opt.</i> <b>41</b>, 5275-5281 (2002)</a>
%
% 20 °C, Nitrogen atmosphere
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
    coeff = [0 0.443749998 0.00178027854 0.444930066 0.00788536061 0.150133991 0.0124119491 8.85319946 2752.28175];
    nk = n_rii(lambda, coeff, range, 2);
end
