function [nk] = n_C_Peter(lambda)
%function [nk] = n_C_Peter(lambda)
%
% F. Peter. Über Brechungsindizes und Absorptionskonstanten des Diamanten zwischen 644 und 226 mμ, <a href="http://dx.doi.org/10.1007/BF01330487"><i>Zeitschrift für Physik</i> <b>15</b>, 358-368 (1923)</a>
%
% Cubic carbon (diamond). Room temperature; no temperature effect on refractive index was observed in the temperature interval 10 - 30 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.226 0.760];
    coeff = [0 0.3306 0.1750 4.3356 0.1060];
    nk = n_rii(lambda, coeff, range, 1);
end
