function [nk] = n_BF33(lambda)
%function [nk] = n_BF33(lambda)
%
% n_BF33 :  returns the complex refractive index of Schott
%           BOROFLOAT-33 glass. The refractive index is
%           interpolated using a Sellmeier formula from data
%           provided by Schott. The function is valid for
%           wavelengths 0.36 um < lambda < 1.55 um.
%           
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.
%
% References:
% Schott BOROFLOAT refractive index data provided by Schott 
% via email.

% Initial version, Ulf Griesmann, December 2013

% check arguments
if nargin < 1
    error('n_BF33: missing wavelength argument.');
end
if min(lambda) < 0.36 || max(lambda) > 1.55
    warning('n_BF33: one or more wavelength(s) out of valid range.');
end

% set up Sellmeier formula constants
par.A = [0.2799, 0.8607, 0.9766];
par.B = [-8.7450e-04, 0.0111, 99.3614];

% calculate index
nk = complex(n_sellmeier(lambda, par));

return
