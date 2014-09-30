function [nk] = n_CdGeP2_Boyd-118-o(lambda)
%function [nk] = n_CdGeP2_Boyd-118-o(lambda)
%
% 1) G. D. Boyd et al.. Linear and nonlinear optical properties of ternary A<sup>II</sup>B<sup>IV</sup>C<sub>2</sub><sup>V</sup> chalcopyrite semiconductors, <a href="http://dx.doi.org/10.1109/JQE.1972.1076982"><i>IEEE J. Quant. Electron.</i>, <b>8</b>, 419-426 (1972)</a><br>2) G. C. Bhar and G. Ghosh. Temperature-dependent Sellmeier coefficients and coherence lengths for some chalcopyrite crystals, <a href="http://dx.doi.org/10.1364/JOSA.69.000730"><i>J. Opt. Soc. Am.</i> <b>69</b>, 730-733 (1979)</a><br>*Ref. 2 provides Sellmeier equation based on the data from Ref. 1
%
% Ordinary ray (o); 118 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.8 12.5];
    coeff = [5.3737 3.9281 0.2269 1.6686 671.33];
    nk = n_rii(lambda, coeff, range, 2);
end
