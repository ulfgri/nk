function [nk] = n_SrMoO4_Bond-o(lambda)
%function [nk] = n_SrMoO4_Bond-o(lambda)
%
% 1) W. L. Bond. Measurement of the refractive indices of several crystals , <a href="http://dx.doi.org/10.1063/1.1703106"><i>J. Appl. Phys.</i> <b>36</b>, 1674-1677 (1965)</a><br>2) Handbook of Optics, 3rd edition, Vol. 4. McGraw-Hill 2009</br>* Ref. 2 provides Sellmeier equation based on the data from ref. 1
%
% Ordinary ray (o); Room temperature.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.45 2.4];
    coeff = [0 2.4839 0.1451 0.1015 4.603];
    nk = n_rii(lambda, coeff, range, 1);
end
