function [nk] = n_Y3Al5O12_Zelmon(lambda)
%function [nk] = n_Y3Al5O12_Zelmon(lambda)
%
% D. E. Zelmon, D. L. Small and R. Page. Refractive-index measurements of undoped yttrium aluminum garnet from 0.4 to 5.0 μm, <a href="http://dx.doi.org/10.1364/AO.37.004933"><i>Appl. Opt.</i> <b>37</b>, 4933-4935 (1998)</a>
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.4 5.0];
    coeff = [0 2.28200 0.01185 3.27644 282.734];
    nk = n_rii(lambda, coeff, range, 2);
end
