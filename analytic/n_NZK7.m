function [nk] = n_NZK7(lambda)
%function [nk] = n_NZK7(lambda)
%
% n_NZK7 :  returns the complex refractive index 
%           of Schott N-ZK7 crown glass.
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

L2 = lambda.^2;
nk = complex( sqrt(1 + AN*L2./(L2-AD) + BN*L2./(L2-BD) + CN*L2./(L2-CD)) );

return
