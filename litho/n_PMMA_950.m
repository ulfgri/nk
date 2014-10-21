function [nk] = n_PMMA_950(lambda)
%function [nk] = n_PMMA_950(lambda)
%
% n_PMMA_950:  returns the complex refractive index 
%          of microchem PMMA 950. 
%          Source: http://www.microchem.com/pdf/PMMA_Data_Sheet.pdf (A,B,C
%          constants)
%          Source: http://www.photoresists.eu/photoresist_1142.html (Model
%          functional form)
% Input:
% lambda :  a vector with wavelengths in um
%
% Output:
% nk :      a vector with refractive indices at the specified
%           wavelengths.

% Cory D. Cress, NRL, September 2014

    % constants
    A = 1.488;
    B = 2.898e-3;
    C = 1.579e-4;

    L2 = lambda .^ -2;
    nk = A + L2 .* (B +C*L2);

    nk = complex(nk);
    
end
