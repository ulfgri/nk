function [nk] = n_PbTe_Weiting-300K(lambda)
%function [nk] = n_PbTe_Weiting-300K(lambda)
%
% F. Weiting and Y. Yixun. Temperature effects on the refractive index of lead telluride and zinc selenide, <a href="http://dx.doi.org/10.1016/0020-0891(90)90055-Z"><i>Infrared Phys.</i> <b>30</b>, 371–373, 1990</a><br>(fitting experimental data with dispersion formula: refractiveindex.info)
%
% 300 K (27 °C)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [4.099 12.51];
    coeff = [1 30.586 2 2.0494 1 0 0 0 1 -0.0034832 2];
    nk = n_rii(lambda, coeff, range, 4);
end
