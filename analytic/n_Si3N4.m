function [nk] = n_Si3N4(lambda)
% function [nk] = n_Si3N4(lambda)
%
% n_Si3N4: refractive index of silicon nitride using the Sellmeir
%          formula by Phillip.
%
% lambda : a vector of vacuum wavelengths in um 
% nk     : the complex refractive index at wavelengths lambda.
%
% Reference:
%     H. R. Phillip, J. Electrochem. Soc. 120, 295 (1972)
%

% Author: Ulf Griesmann; NIST; Sept. 2013 
% ---------------------------------------------------------

% initialize constants
A1 = 2.8939;
B1 = 0.0195077089; % re-scale for um wavelength unit

% apply Sellmeir formula
l2 = lambda.^2;
ri = sqrt( A1 * l2 ./ (l2 - B1) + 1);

nk = complex(ri);

return
