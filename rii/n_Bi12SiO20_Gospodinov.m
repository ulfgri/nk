function [nk] = n_Bi12SiO20_Gospodinov(lambda)
%function [nk] = n_Bi12SiO20_Gospodinov(lambda)
%
% M. Gospodinov et al.. Physical properties of cubic Bi<sub>12</sub>SiO<sub>20</sub>, <i>Bulgarian J. Phys.</i> <b>15</b>, 140-143 (1988). Cited in <i>Handbook of Optics</i>, 3rd edition, Vol. 4. McGraw-Hill 2009
%
% Room temperature
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.48 0.7];
    coeff = [1.72777 3.01705 0.2661];
    nk = n_rii(lambda, coeff, range, 1);
end
