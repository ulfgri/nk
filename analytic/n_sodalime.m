function [nk] = n_sodalime(lambda)
%function [nk] = n_sodalime(lambda)
%
% n_sodalime :  returns the complex refractive index 
%           of Schott N-ZK7 crown glass. 'soda lime' glass
%           is a crown glass that is commonly used as a
%           substrate material for photomasks.
%
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.

% Initial version, Ulf Griesmann, February 2013

% set up Sellmeir formula constants (from Glass data sheet)
AN = 1.07715032;
AD = 0.00676601657;
BN = 0.168079109;
BD = 0.0230642817;
CN = 0.851889892;
CD = 89.0498778;

L = lambda .^ 2;
nk = complex( sqrt(1 + AN*L./(L-AD) + BN*L./(L-BD) + CN*L./(L-CD)) );

return
