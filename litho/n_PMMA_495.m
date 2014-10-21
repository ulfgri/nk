function [nk] = n_PMMA_495(lambda)
%function [nk] = n_PMMA_495(lambda)
%
% n_PMMA_495:  returns the complex refractive index 
%          of microchem PMMA 495. 
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
    A = 1.491;
    B = 3.427e-3;
    C = 1.819e-4;

    L2 = lambda .^ -2;
    nk = A + L2 .* (B + C*L2);

    nk = complex(nk);

end
