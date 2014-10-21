function [nk] = n_MMA_mEL(lambda)
%function [nk] = n_MMA_mEL(lambda)
%
% n_MMA_mEL:  returns the complex refractive index 
%          of microchem MMA. 
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
    A = 1.478;
    B = 7.204e-4;
    C = -3.478e-4; %This is negative on spec sheet but fits better when positive!

    L2 = lambda .^ -2;
    nk = A + L2 .* (B + C*L2);
    nk = complex(nk);

end
