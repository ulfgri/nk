function [nk] = n_rii(lambda, C, range, model)
%function [nk] = n_rii(lambda, C, range, model)
%
% n_rii : calculate the complex refractive index for
%         analytical models in the refractiveindex.info 
%         database. This function is used for the conversion
%         of functions defined in the RII database. It is not
%         meant to be called directly by users.
%
% INPUT
% lambda :  a vector of wavelengths in micrometer
% C :       a vector with coefficients
% range :   a 1x2 vector with mininum and maximum
%           of the valid range
% model :   an integer number 1, ..., 9 that selects
%           the refractive index dispersion model.
%           See "Dispersion formulas.pdf"
%
% OUTPUT
% nk :      column vector with complex refractive index at input
%           wavelengths.

% This program is in the Public Domain

% Ulf Griesmann, NIST, September 2014

    % check arguments
    if nargin < 4
      error('function requires 4 input arguments');
    end
    if isrow(lambda), lambda = lambda'; end
    if isrow(C), C = C'; end

    % check wavelength range
    if ~all(lambda > range(1))
      error('one or more input wavelengths smaller than minimum of valid range.');
    end
    if ~all(lambda < range(2))
      error('one or more input wavelengths larger than maximum of valid range.');
    end

    % calculate index
    switch model
  
     case {1,2} % Sellmeier, Sellmeier-2
        lambda2 = lambda.^2;
        cnom = C(2:2:end);
        cden = C(3:2:end);
        if model == 1
           cden = cden.^2;
        end
        if length(cnom) ~= length(cden)
           error('odd number of coefficients required for Sellmeier dispersion models.');
        end
        N = bsxfun(@times, repmat(lambda2',length(cnom),1), cnom);
        D = repmat(lambda2',length(cden),1) - ...
            bsxfun(@times, ones(length(cden),length(lambda2)), cden);
        n = sqrt(1 + C(1) + sum(N./D,1)');
 
     case 3 % Polynomial
        cexp = C(2:2:end);
        cfac = C(3:2:end);
        if length(cexp) ~= length(cfac)
           error('odd number of coefficients required for Polynomial dispersion model.');
        end
        n = sqrt(C(1) + ...
                 sum(bsxfun(@times,bsxfun(@power,repmat(lambda,length(cexp),1),cexp),cfac),1)');
  
     case 4 % refractiveindex.info
        lambda2 = lambda.^2;
        n = sqrt(C(1) + ...
                 C(2)*lambda.^C(3)./(lambda2 - C(4)^C(5)) + ...
                 C(6)*lambda.^C(7)./(lambda2 - C(8)^C(9)) + ...
                 C(10)*lambda.^C(11) + C(12)*lambda.^C(13) + ...
                 C(14)*lambda.^C(15) + C(16)*lambda.^C(17) );
             
     case 5 % Cauchy
        cexp = C(2:2:end);
        cfac = C(3:2:end);
        if length(cexp) ~= length(cfac)
           error('odd number of coefficients required for Cauchy dispersion model.');
        end
        n = C(1) + ...
            sum(bsxfun(@times, bsxfun(@power,repmat(lambda',length(cexp),1),cexp),cfac),1)';
  
     case 6 % Gases
        lm2 = 1./lambda.^2;
        cnom = C(2:2:end);
        cden = C(3:2:end);
        if length(cnom) ~= length(cden)
           error('odd number of coefficients required for dispersion model 6.');
        end
        N = bsxfun(@times, ones(length(cnom),length(lm2)), cnom);
        D = bsxfun(@times, ones(length(cden),length(lm2)), cden) - ...
            repmat(lm2',length(cden),1);
        n = 1 + C(1) + sum(N./D,1)';
  
     case 7 % Herzberger
        if length(C) ~= 6
           error('Herzberger dispersion model requires 6 coefficients.');
        end
        lambda2 = lambda.^2;
        n = C(1) + C(2)./(lambda2 - 0.028) + C(3)./(lambda2-0.028).^2 + ...
            C(4)*lambda2 + C(5)*lambda2.^2 + C(6)*lambda2.^3;
  
     case 8 % Retro
        if length(C) ~= 4
           error('Retro dispersion model requires 4 coefficients.');
        end
        lambda2 = lambda.^2;
        Q = C(1) + C(2)*lambda2 ./ (lambda2 - C(3)) + C(4)*lambda2;
        n = sqrt((2*Q+1)./(1-Q)); 
    
     case 9 % Exotic
        if length(C) ~= 6
           error('Exotic dispersion model requires 6 coefficients.');
        end
        n = sqrt( C(1) + C(2)./(lambda.^2 - C(3)) + ...
                  C(4)*(lambda - C(5))./((lambda - C(5)).^2 + C(6)) );
  
     otherwise
        error('unknown dispersion model');
    end

    % return complex index
    nk = complex(n);

end
