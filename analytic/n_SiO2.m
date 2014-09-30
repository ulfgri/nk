function [nk] = n_SiO2(lambda)
% function [nk] = n_SiO2(lambda)
%
% n_sio2: calculate the refractive index of fused silica using
%         the three-term Sellmeir forumula by Malitson. 
%         The index has a relative uncertainty of 1 part in 10^5.
%
% lambda : OPTIONAL, a vector of vacuum wavelengths in um 
%          (default is the HeNe laser wavelength)
% nk     : the complex refractive index at wavelengths lambda.
%
% Reference:
%   I. H. Malitson, "Interspecimen comparison of the refractive
%   index of fused silica", J. Opt. Soc. Am. 55, 1205-1209 (1965) 

% Version 1.0
% Author: Ulf Griesmann; NIST; Feb 2003 
% Review: Johannes Soons; NIST; Jan 2008 
% Status: OK
% ---------------------------------------------------------

% check input parameters
if nargin < 1, lambda = []; end
if isempty(lambda), lambda = 0.6329915; end
if isrow(lambda), lambda = lambda'; end

% initialize constants
A1 = 0.6961663e0;
B1 = 4.679148e-3;
A2 = 0.4079426e0;
B2 = 1.351206e-2;
A3 = 0.8974794e0;
B3 = 97.93400e0;

% apply Sellmeir formula
l2 = lambda.^2;
ri = sqrt( A1 * l2 ./ (l2 - B1) + ...
           A2 * l2 ./ (l2 - B2) + ...
           A3 * l2 ./ (l2 - B3) + 1 );

nk = complex(ri);

return
