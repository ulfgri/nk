function [nk] = n_H2O_Daimon-21.5C(lambda)
%function [nk] = n_H2O_Daimon-21.5C(lambda)
%
% M. Daimon and A. Masumura. Measurement of the refractive index of distilled water from the near-infrared region to the ultraviolet region, <a href="http://dx.doi.org/10.1364/AO.46.003811"><i>Appl. Opt.</i> <b>46</b>, 3811-3820 (2007)</a>
%
% 21.5 °C. High performance liquid chromatography (HPLC) distilled water. Refractive index is absolute (relative to vacuum). Wavelength is vacuum wavelength.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.182 1.129];
    coeff = [0 5.689093832E-1 5.110301794E-3 1.719708856E-1 1.825180155E-2 2.062501582E-2 2.624158904E-2 1.123965424E-1 1.067505178E1];
    nk = n_rii(lambda, coeff, range, 2);
end
