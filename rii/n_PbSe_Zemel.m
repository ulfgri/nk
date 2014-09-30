function [nk] = n_PbSe_Zemel(lambda)
%function [nk] = n_PbSe_Zemel(lambda)
%
% J. N. Zemel, J. D. Jensen, and R. B. Schoolar. Electrical and optical properties of epitaxial films of PbS, PbSe, PbTe, and SnTe, <a href="http://dx.doi.org/10.1103/PhysRev.140.A330"><i>Phys. Rev.</i> <b>140</b>, A330-A342, 1965</a>
%
% 300 K (27 °C)
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [5.0 10];
    coeff = [0 21.1 1.37];
    nk = n_rii(lambda, coeff, range, 1);
end
