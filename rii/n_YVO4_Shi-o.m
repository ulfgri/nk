function [nk] = n_YVO4_Shi-o(lambda)
%function [nk] = n_YVO4_Shi-o(lambda)
%
% H. S. Shi, G. Zhang and H. Y. Shen. Measurement of principal refractive indices and the thermal refractive index coefficients of yttrium vanadate, <a href="http://caod.oriprobe.com/articles/3152847/Measurement_of_Principal_Refractive_Indices_and_the_Thermal_Refractive.htm"><i>J. Synthetic Cryst.</i> <b>30</b>, 85–88 (2001)</a>, as cited in Handbook of Optics, 3rd edition, Vol. 4. McGraw-Hill 2009
%
% Ordinary ray (o)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.48 1.34];
    coeff = [3.778790 0.07479 0 0.045731 1 0 0 0 1 -0.009701 2];
    nk = n_rii(lambda, coeff, range, 4);
end
