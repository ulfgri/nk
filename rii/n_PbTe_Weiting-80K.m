function [nk] = n_PbTe_Weiting-80K(lambda)
%function [nk] = n_PbTe_Weiting-80K(lambda)
%
% F. Weiting and Y. Yixun. Temperature effects on the refractive index of lead telluride and zinc selenide, <a href="http://dx.doi.org/10.1016/0020-0891(90)90055-Z"><i>Infrared Phys.</i> <b>30</b>, 371–373, 1990</a><br>(fitting experimental data with dispersion formula: refractiveindex.info)
%
% 80 K (-193 °C)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [5.189 12.51];
    coeff = [1 34.576 2 4.0854 1 0 0 0 1 -0.0087206 2];
    nk = n_rii(lambda, coeff, range, 4);
end
