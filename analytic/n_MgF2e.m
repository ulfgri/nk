function [nk] = n_MgF2e(lambda)
%function [nk] = n_MgF2e(lambda)
%
% n_MgF2e :  returns the complex refractive index of magnesium
%            for the extraordinary ray at room temperature. The function 
%            is valid for wavelengths 0.12 um < lambda < 5 um.
%           
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.
%
% References:
% + M. J. Dodge, "Refractive properties of magnesium fluoride",
% Appl. Opt. 23, 1980-1985 (1984)
% + P. Laporte, J. L. Subtil, M. Courbon, and M. Bon,
% "Vacuum-ultraviolet refractive index of LiF and MgF2 in the
% temperature range 80K - 300K", J. Opt. Soc. Am. 73, 1062-1068 (1983)

% Initial version, Ulf Griesmann, December 2013

% check arguments
if nargin < 1
    error('n_MgF2e: missing wavelength argument.');
end
if min(lambda) < 0.12 || max(lambda) > 5
    warning('n_MgF2e: one or more wavelength(s) out of valid range.');
end

% set up Sellmeier formula constants
par.A = [0.41344023, 0.50497499, 2.4904862];
par.B = [0.001357378648464, 0.008237671665024, 5.651077462800250e+02];

% calculate index
nk = complex(n_sellmeier(lambda, par));

return
