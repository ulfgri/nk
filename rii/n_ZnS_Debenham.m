function [nk] = n_ZnS_Debenham(lambda)
%function [nk] = n_ZnS_Debenham(lambda)
%
% 1) M. Debenham. Refractive indices of zinc sulfide in the 0.405-13-µm wavelength range, <a href="http://dx.doi.org/10.1364/AO.23.002238"><i>Appl. Opt.</i>, <b>23</b>, 2238-2239 (1984)</a><br>2) C. A. Klein. Room-temperature dispersion equations for cubic zinc sulfide, <a href="http://dx.doi.org/10.1364/AO.25.001873"><i>Appl. Opt.</i> <b>25</b>, 1873-1875 (1986)</a><br>*Ref. 2 provides a modified Sellmeier equation based on the data from Ref. 1
%
% Cubic ZnS, 20 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.405 13];
    coeff = [8.393 0.14383 0 0.2421 2 4430.99 0 36.71 2];
    nk = n_rii(lambda, coeff, range, 4);
end
