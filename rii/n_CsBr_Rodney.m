function [nk] = n_CsBr_Rodney(lambda)
%function [nk] = n_CsBr_Rodney(lambda)
%
% W. S. Rodney and R. J. Spindler. Refractive index of cesium bromide for ultraviolet, visible, and infrared wavelengths, <a href="http://archive.org/details/jresv51n3p123">J. Res. Nat. Bur. Stand. <b>51</b>, 123-126 (1953)</a>
%
% 27 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.365 39];
    coeff = [0 0.9533786 0.0905643 0.8303809 0.1671517 2.847172 119.0155];
    nk = n_rii(lambda, coeff, range, 1);
end
