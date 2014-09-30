function [nk] = n_MgAl2O4_Tropf(lambda)
%function [nk] = n_MgAl2O4_Tropf(lambda)
%
% 1) W. J. Tropf and M. E. Thomas, Magnesium aluminum spinel (MgAlO<sub>4</sub>), in E. D. Palik (ed.), Handbook of Optical Constants of Solids II, Academic Press, Orlando, 1991, pp. 881–895<br>2) Handbook of Optics, 3rd edition, Vol. 4. McGraw-Hill 2009<br>* Ref. 2 provides improved Sellmeier equation based on data from Ref. 1
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
    range = [0.35 5.5];
    coeff = [0 1.8938 0.09942 3.0755 15.826];
    nk = n_rii(lambda, coeff, range, 1);
end
