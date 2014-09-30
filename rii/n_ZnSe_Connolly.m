function [nk] = n_ZnSe_Connolly(lambda)
%function [nk] = n_ZnSe_Connolly(lambda)
%
% 1) J. Connolly, B. diBenedetto, and R. Donadio. Specifications of Raytran material, <a href="http://dx.doi.org/10.1117/12.957359"><i>Proc. SPIE</i>, <b>181</b>, 141-144 (1979)</a><br>2) B. Tatian. Fitting refractive-index data with the Sellmeier dispersion formula, <a href="http://dx.doi.org/10.1364/AO.23.004477"><i>Appl. Opt.</i> <b>23</b>, 4477-4485 (1984)</a><br>*Ref. 2 provides Sellmeier equation based on the data from Ref. 1
%
% CVD ZnSe, 23 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.54 18.2];
    coeff = [0 4.45813734 0.200859853 0.467216334 0.391371166 2.89566290 47.1362108];
    nk = n_rii(lambda, coeff, range, 1);
end
