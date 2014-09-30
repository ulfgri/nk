function [nk] = n_Ne_Bideau-Mehu(lambda)
%function [nk] = n_Ne_Bideau-Mehu(lambda)
%
% A. Bideau-Mehu, Y. Guern, R. Abjean, A. Johannin-Gilles. Measurement of refractive indices of neon, argon, krypton and xenon in the 253.7–140.4 nm wavelength range. Dispersion relations and estimated oscillator strengths of the resonance lines. <a href="http://dx.doi.org/10.1016/0022-4073(81)90057-1"><i>J. Quant. Spectrosc. Rad. Transfer</i> <b>25</b>, 395-402 (1981)</a>
%
% 273 K (0 °C).
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.1404 0.2537];
    coeff = [0 0.00128145 184.661 0.0220486 376.840];
    nk = n_rii(lambda, coeff, range, 6);
end
