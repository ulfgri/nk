function [nk] = n_AgCl_Tilton(lambda)
%function [nk] = n_AgCl_Tilton(lambda)
%
% L. W. Tilton, E. K. Plyler, and R. E. Stephens. Refractive index of silver chloride for visible and infra-red radiant energy, <a href="http://dx.doi.org/10.1364/JOSA.40.000540"><i>J. Opt. Soc. Am.</i> <b>40</b>, 540-541 (1950)</a>
%
% 23.9 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.578 20.6];
    coeff = [4.00804 0.079086 0 0.04584 1 0 0 0 1 -0.00085111 2 -0.00000019762 4];
    nk = n_rii(lambda, coeff, range, 4);
end
