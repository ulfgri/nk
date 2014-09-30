function [nk] = n_GeO2_Fleming(lambda)
%function [nk] = n_GeO2_Fleming(lambda)
%
% J. W. Fleming. Dispersion in GeO<sub>2</sub>-SiO<sub>2</sub> glasses, <a href="http://dx.doi.org/10.1364/AO.23.004486"><i>Appl. Opt.</i> <b>23</b>, 4486-4493 (1984)</a>
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.36 4.3];
    coeff = [0 0.80686642 0.068972606 0.71815848 0.15396605 0.85416831 11.841931];
    nk = n_rii(lambda, coeff, range, 1);
end
