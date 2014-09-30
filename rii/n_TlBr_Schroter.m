function [nk] = n_TlBr_Schroter(lambda)
%function [nk] = n_TlBr_Schroter(lambda)
%
% H. Schröter. Über die Brechungsindizes einiger Schwermetallhalogenide im Sichtbaren und die Berechnung von Interpolationsformeln für den Dispersionsverlauf (On the refractive indices of some heavy-metal halides in the visible and calculation of interpolation formulas for dispersion), <a href="http://dx.doi.org/10.1007/BF01391040"><i>Z. Phys.</i> <b>67</b>, 24-36 (1931)</a> [in German]
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.54 0.65];
    coeff = [0.48484 0.10279 0.090000 -0.0047896];
    nk = n_rii(lambda, coeff, range, 8);
end
