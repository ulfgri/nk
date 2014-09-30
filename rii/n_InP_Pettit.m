function [nk] = n_InP_Pettit(lambda)
%function [nk] = n_InP_Pettit(lambda)
%
% 1) G. D. Pettit and W. J. Turner. Refractive index of InP, <a href="http://dx.doi.org/10.1063/1.1714410"><i>J. Appl. Phys.</i> <b>36</b>, 2081 (1965)</a><br>2) A. N. Pikhtin and A. D. Yas’kov. Disperson of the refractive index of semiconductors with diamond and zinc-blende structures, <i>Sov. Phys. Semicond.</i> <b>12</b>, 622–626 (1978) - as cited in Handbook of Optics, 2nd edition, Vol. 2. McGraw-Hill 1994<br>3) Handbook of Optics, 2nd edition, Vol. 2. McGraw-Hill 1994<br> * Ref. 3 provides a Sellmeier equation based on the data from Ref. 1 and Ref. 2.
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
    range = [0.95 10];
    coeff = [6.255 2.316 0.6263 2.765 32.935];
    nk = n_rii(lambda, coeff, range, 1);
end
