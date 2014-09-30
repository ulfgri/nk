function [nk] = n_ZnS(lambda)
%function [nk] = n_ZnS(lambda)
%
% n_ZnS :  returns the complex refractive index 
%          of Zinc Sulfide. 
%          Source: http://refractiveindex.info
%
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.

% Initial version, Ulf Griesmann, October 2013

% constants
A = 4.4175;
B = 1.7396;
C = 0.071663;

L2 = lambda .^ 2;
nk = complex( sqrt(A + B*L2 ./ (L2 - C)) );

return
