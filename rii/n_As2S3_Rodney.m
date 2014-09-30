function [nk] = n_As2S3_Rodney(lambda)
%function [nk] = n_As2S3_Rodney(lambda)
%
% W. S. Rodney, I. H. Malitson, and T. A. King. Refractive index of arsenic trisulfide, <a href="http://dx.doi.org/10.1364/JOSA.48.000633"><i>J. Opt. Soc. Am.</i> <b>48</b>, 633-635 (1958)</a>
%
% 25 °C
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.57 11.8];
    coeff = [0 1.8983678 0.0225 1.9222979 0.0625 0.8765134 0.1225 0.1188704 0.2025 0.9569903 750];
    nk = n_rii(lambda, coeff, range, 2);
end
