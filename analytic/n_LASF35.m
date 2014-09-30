function [nk] = n_LASF35(lambda)
%function [nk] = n_LASF35(lambda)
%
% n_LASF35 :  returns the complex refractive index 
%             of Schott LASF35 high refractive index glass. 
%             The index is calculated using a Sellmeier formula. 
%             Index data are from Schott glass data sheet. The 
%             function is valid for 0.4 um < lambda < 2.5 um.
%
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.

% Initial version, Ulf Griesmann, December 2013

% Sellmeier formula constants
par.A = [0.373301001621245, 2.534590466156417, 2.139775253807920];
par.B = [0.057754752729277, 0.01444066726206, 151.442425590984641];

% evaluate
nk = complex( n_sellmeier(lambda, par) );

return
