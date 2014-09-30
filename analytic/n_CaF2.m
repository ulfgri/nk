function [nk] = n_CaF2(lambda, t)
%function [nk] = n_CaF2(lambda, t)
%
% n_CaF2 :  returns the complex refractive index of calcium 
%           fluoride at 20 degC. The function is valid for
%           wavelengths 0.138 um < lambda < 2.326 um.
%           
%           Source: http://refractiveindex.info
%
% Input:
% lambda :  a vector with wavelengths in um
% t :       (Optional) temperature in deg C; 
%           either 20 or 25. Default is 20.
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.
%
% Reference:
% M. Daimon and A. Masumura, "High-Accuracy Measurements of the
% Refractive Index and its Temperature Coefficient of Calcium
% Fluoride in a Wide Wavelength Range from 138 to 2326 nm", 
% Appl. Opt. 41, 5275-5281 (2002)
%
% NOTE: for short wavelengths k > 0, but data are not available.

% Initial version, Ulf Griesmann, December 2013

% check arguments
if nargin < 2, t = []; end
if nargin < 1
    error('n_CaF2: missing wavelength argument.');
end
if min(lambda) < 0.138 || max(lambda) > 2.326
    warning('n_CaF2: one or more wavelength(s) out of valid range.');
end
if isempty(t), t = 20; end

% set up Sellmeier formula constants
if t == 20
    par.A = [0.443749998,0.444930066,0.150133991,8.85319946];
    par.B = [0.00178027854,0.00788536061,0.0124119491,2752.28175];
elseif t == 25
    par.A = [0.437387571,0.449211397,0.152068715,13.0020420];
    par.B = [0.00173799328,0.00782718648,0.0124086125,4039.76541];
else
    error('n_CaF2: temperature argument must be 20 or 25.');
end

% calculate index
nk = complex( n_sellmeier(lambda,par) );

return
