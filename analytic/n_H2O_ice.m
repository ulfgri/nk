function [nk] = n_H2O_ice(lambda, T, rho)
%function [nk] = n_H2O_ice(lambda, T, rho)
%
% n_H2O_ice :  refractive index of water ice.
%
% Input:
% lambda :  a vector of wavelengths in um (micrometer).
% T :       (Optional) the temperature of the ice in K.
%           Default is 273.15 K (0 deg C).
% rho :     (Optional) density of the ice in g/cm^3.
%           Default is 0.9167 g/cm^3, the density at
%           0 deg C.
%
% Output:
% nk :      vector of complex refractive indices.
%
% Reference:
% en.wikipedia.org/wiki/Optical_properties_of_water_and_ice.html

% Initial version, Ulf Griesmann, November 2013

% check arguments
if nargin < 3, rho = []; end
if nargin < 2, T = []; end
if nargin < 1
   error('n_H2O_ice: missing input argument.');
end

if isempty(rho), rho = 0.9167; end
if isempty(T), T = 273.15; end

% constants
a0 = 0.244257733;
a1 = 0.00974634476;
a2 = -0.00373234996;
a3 = 0.000268678472;
a4 = 0.0015892057;
a5 = 0.00245934259;
a6 = 0.90070492;
a7 = -0.0166626219;
lambdair2 = 5.432937^2;
lambdauv2 = 0.229202^2;

% variables
Tbar = T / 273.15;
lambdabar2 = (lambda / 0.589).^2;

% calculate index
A = rho * (a0 + a1*rho + a2*Tbar + a3*lambdabar2*Tbar + ...
           a4./lambdabar2 + a5./(lambdabar2 - lambdauv2) + ...
           a6./(lambdabar2 - lambdair2) + a7*rho^2);
nk = complex( sqrt( (2*A + 1)./(1 - A) ) );

return
