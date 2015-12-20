function [nk] = n_BF33(lambda)
%function [nk] = n_BF33(lambda)
%
% n_BF33 :  returns the complex refractive index of Schott
%           BOROFLOAT-33 glass. The refractive index is
%           interpolated using a Sellmeier formula from data
%           provided by Schott. The function is valid for
%           wavelengths 0.36 um < lambda < 1.55 um.
%           
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.
%
% References:
% Schott BOROFLOAT refractive index data provided by Schott 
% via email.

% Initial version, Ulf Griesmann, December 2013

    % check arguments
    if nargin < 1
        error('n_BF33: missing wavelength argument.');
    end
    if min(lambda) < 0.36 || max(lambda) > 1.55
        warning('n_BF33: one or more wavelength(s) out of valid range.');
    end
    
    % set up Sellmeier formula constants
    par.A = [0.302617787967302, 0.837991910905040, 0.971378676937668];
    par.B = [-3.69434478207298e-04, 1.12585937283431e-02, 9.88574965182944e+01];
    
    % calculate index
    nk = complex(n_sellmeier(lambda, par));
    
end
