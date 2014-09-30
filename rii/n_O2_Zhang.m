function [nk] = n_O2_Zhang(lambda)
%function [nk] = n_O2_Zhang(lambda)
%
% 1) J. Zhang, Z. H. Lu, and L. J. Wang. Precision refractive index measurements of air, N<sub>2</sub>, O<sub>2</sub>, Ar, and CO<sub>2</sub> with a frequency comb, <a href="http://dx.doi.org/10.1364/AO.47.003143"><i>Appl. Opt.</i> <b>47</b>, 3143-3151 (2008)</a><br>2) P. Křen. Comment on "Precision refractive index measurements of air, N<sub>2</sub>, O<sub>2</sub>, Ar, and CO<sub>2</sub> with a frequency comb", <a href="http://dx.doi.org/10.1364/AO.50.006484"><i>Appl. Opt.</i> <b>50</b>, 6484-6485 (2011)</a>
%
% 20 °C; 101 325 Pa.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.4 1.8];
    coeff = [1.181494e-4 9.708931e-3 75.4];
    nk = n_rii(lambda, coeff, range, 6);
end
