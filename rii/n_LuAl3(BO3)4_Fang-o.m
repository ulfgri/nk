function [nk] = n_LuAl3(BO3)4_Fang-o(lambda)
%function [nk] = n_LuAl3(BO3)4_Fang-o(lambda)
%
% S. Fang, H. Liu, L. Huang, and N. Ye. Growth and optical properties of nonlinear LuAl<sub>3</sub>(BO<sub>3</sub>)<sub>4</sub> crystals, <a href="http://dx.doi.org/10.1364/OE.21.016415"><i>Optics Express</i> <b>21</b>, 16415-16423 (2013)</a>
%
% 25 °C. Ordinary ray (o).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.266 1.338];
    coeff = [3.11285 0.01834 0 0.01596 1 0 0 0 1 -0.02354 2];
    nk = n_rii(lambda, coeff, range, 4);
end
