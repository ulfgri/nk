function [nk] = n_CuGaS2_Boyd-20-o(lambda)
%function [nk] = n_CuGaS2_Boyd-20-o(lambda)
%
% 1) G. D. Boyd et al.. Linear and nonlinear optical properties of AgGaS<sub>2</sub>, CuGaS<sub>2</sub>, and CuInS<sub>2</sub>, and theory of the wedge technique for the measurement of nonlinear coefficients, <a href="http://dx.doi.org/10.1109/JQE.1971.1076588"><i>IEEE J. Quant. Electron.</i>, <b>7</b>, 563-573 (1971)</a><br>2) G. C. Bhar and G. Ghosh. Temperature-dependent Sellmeier coefficients and coherence lengths for some chalcopyrite crystals, <a href="http://dx.doi.org/10.1364/JOSA.69.000730"><i>J. Opt. Soc. Am.</i> <b>69</b>, 730-733 (1979)</a><br>*Ref. 2 provides Sellmeier equation based on the data from Ref. 1
%
% Ordinary ray (o); 20 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.55 11.5];
    coeff = [2.9064 2.3065 0.1149 1.5479 738.43];
    nk = n_rii(lambda, coeff, range, 2);
end
