function [nk] = n_Aquatar(lambda)
%function [nk] = n_Aquatar(lambda)
%
% n_Aquatar :  returns the complex refractive index of 
%              AZ Aquatar top anti-reflection coating (TARC). 
%              The refractive index is interpolated using a 
%              Sellmeier formula from data in the material data
%              sheet. The experimental data are in the range
%              0.24 um < lambda < 0.5 um.
%           
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.
%
% References:
% Data sheet for AZ Aquatar

% Initial version, Ulf Griesmann, December 2015

    % check arguments
    if nargin < 1
        error('n_Aquatar: missing wavelength argument.');
    end
    if min(lambda) < 0.24 || max(lambda) > 0.5
        warning('n_Aquatar: one or more wavelength(s) out of data range.');
    end
    
    % set up Sellmeier formula constants
    par.A = [9.22058434142759e-01, 6.58204726603055e+01, 2.86684721976753e+03];
    par.B = [1.50013368857682e-02, 1.46155790415015e+01, -6.09487248020767e+02];
    
    % calculate index
    nk = complex(n_sellmeier(lambda, par));

end
