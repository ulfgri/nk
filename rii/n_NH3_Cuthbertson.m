function [nk] = n_NH3_Cuthbertson(lambda)
%function [nk] = n_NH3_Cuthbertson(lambda)
%
% C. Cuthbertson and M. Cuthbertson. On the refraction and dispersion of the halogens, halogen acids, ozone, steam, oxides of nitrogen and ammonia, <a href="http://dx.doi.org/10.1098/rsta.1914.0001"><i>Phil. Trans. R. Soc. Lond. A</i> <b>213</b>, 1-26 (1914)</a>
%
% 0 °C, 760 mm Hg.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.47999 0.670785];
    coeff = [0 0.032953 90.392];
    nk = n_rii(lambda, coeff, range, 6);
end
