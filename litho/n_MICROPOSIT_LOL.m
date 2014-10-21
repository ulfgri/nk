function [nk] = n_MICROPOSIT_LOL(lambda, bt)
%function [nk] = n_MICROPOSIT_LOL(lambda, bt)
%
% n_MICROPOSIT_LOL :  returns the complex refractive index of 
%                     Dow MICROPOSIT LOL PMGI based Lift-Off Layer.
%
% INPUT:
% lambda :  a vector with wavelengths in micrometer. Must be 
%           between 0.19 um and 0.5 um.
% bt :      bake temperature of the material in deg C.
%           140 degC <= bt <= 210 degC
%
% OUTPUT:
% nk :      a vector with complex refractive indices
%
% REFERENCE:
% Cauchy coefficients were re-calculated from the refractive index
% data in the product data sheet 889-00025 Rev. 0, March 2014.

% Ulf Griesmann, NIST, October 2014

    persistent N K T L
    
    % check arguments
    if nargin < 2
        error('n_MICROPOSIT_LOL: function requires two arguments.');
    end

    if any(lambda < 0.19 | lambda > 0.44)
        error('n_MICROPOSIT_LOL: one or more wavelengths out of range.');
    end

    if bt < 140 || bt > 210
        error('n_MICROPOSIT_LOL: argument bt outside of range.');
    end

    if isrow(lambda), lambda = lambda'; end
    
    % formula constants
    if isempty(T) % bake temperatures
        T = [140, 150, 160, 170, 180, 190, 200, 210]';
    end
    if isempty(N) % Cauchy formula parameters, each row for one temperature
        N = [1.459420707641400, 0.026031790046234, -0.000896205005634; ...
             1.470560519452533, 0.022720439088469, -0.000705902142589; ...
             1.456996075114458, 0.024384082335141, -0.000728999519160; ...
             1.433606364502577, 0.027519489675187, -0.000818441896904; ...
             1.414560004088608, 0.029798286573616, -0.000887785879771; ...
             1.408770006304524, 0.030363763035981, -0.000914382409138; ...
             1.404678951661848, 0.030749843756449, -0.000938895468173; ...
             1.403509496174191, 0.031119153822407, -0.000956626546078];
    end
    if isempty(K) % extinction coefficient, each row for one temperature
        K = [0.175, 0.041, 0.078, 0.033; ...
             0.168, 0.037, 0.067, 0.082; ...
             0.152, 0.035, 0.047, 0.068; ...
             0.144, 0.031, 0.031, 0.055; ...
             0.135, 0.026, 0.016, 0.037; ...
             0.125, 0.021, 0.007, 0.016; ...
             0.120, 0.018, 0.004, 0.002; ...
             0.12,  0.018, 0.003, 0.002];
    end
    if isempty(L) % wavelengths for K
        L = [0.193, 0.248, 0.365, 0.436]';
    end
    
    % Cauchy coefficients for temperature bt 
    ccoeff = interp1(T, N, bt);
    
    % calculate n
    par.A = ccoeff(1);
    par.B = ccoeff(2:3);
    n = n_cauchy(lambda, par);
    
    % calculate k
    klambda = interp1(T, K, bt)';  % k as function of lambda
    k = interp1(L, klambda, lambda);
    
    % return index
    nk = complex(n,-k);
    
end

