function [nk] = n_CaCO3_Ghosh-e(lambda)
%function [nk] = n_CaCO3_Ghosh-e(lambda)
%
% G. Ghosh. Dispersion-equation coefficients for the refractive index and birefringence of calcite and quartz crystals, <a href="http://dx.doi.org/10.1016/S0030-4018(99)00091-7"><i>Opt. Commun.</i> <b>163</b>, 95-102 (1999)</a>
%
% Extraordinary ray (e). Room temperature
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.204 2.172];
    coeff = [0.35859695 0.82427830 1.06689543e-2 0.14429128 120];
    nk = n_rii(lambda, coeff, range, 2);
end
