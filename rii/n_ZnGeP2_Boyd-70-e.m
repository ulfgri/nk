function [nk] = n_ZnGeP2_Boyd-70-e(lambda)
%function [nk] = n_ZnGeP2_Boyd-70-e(lambda)
%
% 1) G. D. Boyd et al.. Linear and nonlinear optical properties of ZnGeP<sub>2</sub> and CdSe, <a href="http://dx.doi.org/10.1063/1.1653673"><i>Appl. Phys. Lett.</i>, <b>18</b>, 301-304 (1971)</a><br>2) G. C. Bhar and G. Ghosh. Temperature-dependent Sellmeier coefficients and coherence lengths for some chalcopyrite crystals, <a href="http://dx.doi.org/10.1364/JOSA.69.000730"><i>J. Opt. Soc. Am.</i> <b>69</b>, 730-733 (1979)</a><br>*Ref. 2 provides Sellmeier equation based on the data from Ref. 1
%
% Extrardinary ray (e); 70 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.64 12];
    coeff = [3.5717 5.4513 0.1435 1.4262 662.55];
    nk = n_rii(lambda, coeff, range, 2);
end
