function [nk] = n_AlN(lambda)
%function [nk] = n_AlN(lambda)
%
% n_BK7 :  returns the complex refractive index 
%          of aluminum nitride (ordinary ray). 
%          The index is calculated using a Sellmeir formula. 
%          Source: http://refractiveindex.info
%
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.

% Initial version, Ulf Griesmann, November 2013

% set up Sellmeir formula constants
AN = 1.3786;
AD = 0.029412;
BN = 3.861;
BD = 225.9;

L = lambda .^ 2;
nk = complex( sqrt(3.1399 + AN*L./(L-AD) + BN*L./(L-BD)) );

return
