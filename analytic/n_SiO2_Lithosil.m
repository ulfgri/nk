function [nk] = n_SiO2_Lithosil(lambda)
% function [nk] = n_SiO2_Lithosil(lambda)
%
% n_SiO2_Lithosil: calculate the refractive index of Schott Lithosil
%                  fused silica using a three-term Sellmeir forumula. 
%         
%
% lambda : a vector of vacuum wavelengths in um 
% nk     : the complex refractive index at wavelengths lambda.
%
% Reference:
%        Schott Lithosil data sheet.

% Ulf Griesmann, NIST, September 2014

    if isrow(lambda), lambda = lambda'; end

    % initialize constants
    A1 = 6.69422575e-1;
    B1 = 4.48011239e-3;
    A2 = 4.34583937e-1;
    B2 = 1.32847049e-2;
    A3 = 8.71694723e-1;
    B3 = 95.3414824;
    
    % apply Sellmeir formula
    l2 = lambda.^2;
    ri = sqrt( A1 * l2 ./ (l2 - B1) + ...
    A2 * l2 ./ (l2 - B2) + ...
    A3 * l2 ./ (l2 - B3) + 1 );
  
    nk = complex(ri);

end
