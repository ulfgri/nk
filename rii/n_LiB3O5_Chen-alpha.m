function [nk] = n_LiB3O5_Chen-alpha(lambda)
%function [nk] = n_LiB3O5_Chen-alpha(lambda)
%
% 1) C Chen et al.. New nonlinear-optical crystal: LiB<sub>3</sub>O<sub>5</sub>, <a href="http://dx.doi.org/10.1364/JOSAB.6.000616"><i>J Opt. Soc. Am.</i> <b>6</b>, 616-621 (1989)</a><br>2) F. Hanson and D. Dick. Blue parametric generation from temperature-tuned LiB<sub>3</sub>O<sub>5</sub>, <a href="http://dx.doi.org/10.1364/OL.16.000205"><i>Opt. Lett.</i> <b>16</b>, 205-207 (1991)</a>.<br>* Ref. 2 provides Sellmeier equations based on  the experimental data from Ref. 1
%
% n<sub>α</sub>; Room temperature.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.2894 1.064];
    coeff = [2.45768 0.0098877 0 0.026095 1 0 0 0 1 -0.013847 2];
    nk = n_rii(lambda, coeff, range, 4);
end
