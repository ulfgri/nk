function [nk] = n_SrTiO3_Dodge(lambda)
%function [nk] = n_SrTiO3_Dodge(lambda)
%
% M. J. Dodge. Refractive Index, in M. J. Weber (ed.), Handbook of Laser Science and Technology, Volume IV, Optical Material: Part 2, CRC Press, Boca Raton, 1986 (as cited in Handbook of Optics, 3rd edition, Vol. 4. McGraw-Hill 2009).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.43 3.8];
    coeff = [0 3.042143 0.1475902 1.170065 0.2953086 30.83326 33.18606];
    nk = n_rii(lambda, coeff, range, 1);
end
