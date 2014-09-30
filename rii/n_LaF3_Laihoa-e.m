function [nk] = n_LaF3_Laihoa-e(lambda)
%function [nk] = n_LaF3_Laihoa-e(lambda)
%
% R. Laihoa and M. Lakkistoa. Investigation of the refractive indices of LaF<sub>3</sub>, CeF<sub>3</sub>, PrF<sub>3</sub> and NdF<sub>3</sub>, <a href="http://dx.doi.org/10.1080/13642818308226470"><i>Phil. Mag. B</i> <b>48</b>, 203-207 (1983)</a> (As cited in Handbook of Optics, 2nd edition, Vol. 2. McGraw-Hill 1994).
%
% Extraordinary ray (e)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.35 0.70];
    coeff = [0 1.5149 0.0878];
    nk = n_rii(lambda, coeff, range, 1);
end
