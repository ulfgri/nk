function [nk] = n_RbTiOPO4_Carvajal-beta(lambda)
%function [nk] = n_RbTiOPO4_Carvajal-beta(lambda)
%
% J. J. Carvajal, P. Segonds, A. Peña, J. Zaccaro, B. Boulanger, F. Díaz and M. Aguiló. Structural and optical properties of RbTiOPO<sub>4</sub>:Nb crystals , <a href="http://dx.doi.org/10.1088/0953-8984/19/11/116214"><i>J. Phys.: Condens. Matter</i> <b>19</b>, 116214, 2007</a>
%
% n<sub>β</sub>; 293 K (20 °C).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.4 1.5];
    coeff = [2.0360 1.0883 2 0.0437 1 0 0 0 1 -0.0090 2];
    nk = n_rii(lambda, coeff, range, 4);
end
