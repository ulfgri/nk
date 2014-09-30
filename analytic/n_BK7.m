function [nk] = n_BK7(lambda)
%function [nk] = n_BK7(lambda)
%
% n_BK7 :  returns the complex refractive index 
%          of Schott N-BK7 glass. The index is calculated
%          using a Sellmeier formula. 
%          Source: http://refractiveindex.info
%
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.

% Initial version, Ulf Griesmann, February 2013

% set up Sellmeir formula constants (from Glass data sheet)
AN = 1.03961212;
AD = 0.00600069867;
BN = 0.231792344;
BD = 0.0200179144;
CN = 1.01046945;
CD = 103.560653;

L = lambda .^ 2;
nk = complex( sqrt(1 + AN*L./(L-AD) + BN*L./(L-BD) + CN*L./(L-CD)) );

return
