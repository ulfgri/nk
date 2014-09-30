function [nk] = n_PMMA(lambda)
%function [nk] = n_PMMA(lambda)
%
% n_PMMA :  returns the complex refractive index 
%           Poly-Meta-Methyl-Acrylate (PMMA) at 20 degC. 
%           The index is calculated from a power series.
%
%  Source: http://refractiveindex.info
%  S. N. Kasarova et al. Analysis of the dispersion of optical 
%  plastic materials, Optical Materials 29, 1481-1490 (2007)
%
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.

% Initial version, Ulf Griesmann, October 2013

% check argument
if any(lambda < 0.4)
   error('one or more wavelengths out of range (< 0.4 um).');
end
if any(lambda > 1)
   error('one or more wavelength out of range (> 1 um).');
end

if isrow(lambda), lambda = lambda'; end

% set up constants for power series
ac = [ 2.399964; ...
      -8.308636e-2; ...
      -1.919569e-1; ...
       8.720608e-2; ...
      -1.666411e-2; ...
       1.169519e-3];

L = ones(length(lambda),6);
L(:,2) = lambda.^2;
L(:,3) = lambda.^-2;
L(:,4) = lambda.^-4;
L(:,5) = lambda.^-6;
L(:,6) = lambda.^-8;

nk = complex(sqrt(L*ac));

return
