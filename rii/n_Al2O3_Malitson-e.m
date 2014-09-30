function [nk] = n_Al2O3_Malitson-e(lambda)
%function [nk] = n_Al2O3_Malitson-e(lambda)
%
% 1) I. H. Malitson and M. J. Dodge. Refractive Index and Birefringence of Synthetic Sapphire, <a href="http://www.opticsinfobase.org/josa/abstract.cfm?uri=josa-62-11-1336"><i>J. Opt. Soc. Am.</i> <b>62</b>, 1405 (1972)</a><br>2) M. J. Dodge, "Refractive Index" in Handbook of Laser Science and Technology, Volume IV, Optical Materials: Part 2, CRC Press, Boca Raton, 1986, p. 30<br>* Ref. 1 is a talk abstract in a conference program; Ref. 2 provides Sellmeier equation
%
% Synthetic sapphire, Extraordinary ray (e), 20 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.20 5.0];
    coeff = [0 1.5039759 0.0740288 0.55069141 0.1216529 6.5927379 20.072248];
    nk = n_rii(lambda, coeff, range, 1);
end
