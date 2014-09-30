function [nk] = n_ThF4_Heitmann(lambda)
%function [nk] = n_ThF4_Heitmann(lambda)
%
% W. Heitmann and E. Ritter. Production and properties of vacuum evaporated films of thorium fluoride, <a href="http://dx.doi.org/10.1364/AO.7.000307"><i>Appl. Opt.</i> <b>7</b>, 307-309 (1968)</a><br> (Digitization of <a href="http://refractiveindex.info/download/data/1968/Heitmann.png">graphical data</a> and fitting with the Sellmeier dispersion formula: refractiveindex.info)
%
% ThF<sub>4</sub> film on quartz glass
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.26 0.76];
    coeff = [0 1.2485 0.010466];
    nk = n_rii(lambda, coeff, range, 2);
end
