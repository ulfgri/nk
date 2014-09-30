function [nk] = n_Nb2O5(lambda)
%function [nk] = n_Nb2O5(lambda)
%
% n_Nb2O5 :  returns the complex refractive index 
%            of Niobium Pentoxide. 
%          
% Source:
% B. T. Sullivan and J. A. Dobrowolski, "Implementation of a
% numerical needle method for thin-film design", Appl. Opt. 35,
% 5484-5492 (1996)
%
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.

% Initial version, Ulf Griesmann, October 2013

% constants
A = 2.177;
B = 3.293e-2;
C = 2.484e-3;

L2 = lambda.^-2;
L4 = lambda.^-4;
nk = complex(A + B*L2 + C*L4);

return
