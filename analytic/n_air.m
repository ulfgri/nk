function [nk] = n_air(lambda, pres, temp ,relh)
% function [nk] = n_air(lambda, pres, temp, relh)
%
% n_air: calculate the refractive index of air using
%        the modified Edlen formula by Birch and Downs
%        with additional NIST modifications. Default
%        values for pressure and temperature conform to
%        NIST STP.
%
% lambda : (Optional) vector of vacuum wavelengths in um; 
%          default is 0.6329915 um.
% pres   : (Optional) pressure in Pa; default is 101325 Pa.
% temp   : (Optional) temperature in deg C; default is 20 degC
% relh   : (Optional) relative humidity in percent. Default is 0%
%
% nk     : a column vector with refractive indices at each wavelength. 
%
% Reference:
% 
% K.P. Birch and M.J. Downs, "An updated Edlen equation for the
% refractive index of air," Metrologia 30, 155-162 (1993). 
%
% K.P. Birch and M.J. Downs, "Correction to the updated Edlen
% equation for the refractive index of air," Metrologia 31, 315-316
% (1994). 
%
% NIST modifications: see
% Engineering Metrology Toolbox, http://emtoolbox.nist.gov
 
% Version 1.0
% Author: Ulf griesmann; NIST; Mar 2002 
% Review: Johannes Soons; NIST; Jan 2008 
% Status: OK
% ---------------------------------------------------------

% check input parameters
if nargin < 4, relh = []; end
if nargin < 3, temp = []; end
if nargin < 2, pres = []; end
if nargin < 1, lambda = 0.6329915; end;

if isempty(pres), pres = 101325; end
if isempty(temp), temp = 20; end
if isempty(relh), relh = 0; end
if isrow(lambda), lambda = lambda'; end

% set up constants
A = 8342.54;
B = 2406147.0;
C = 15998.0;
D = 96095.43;
E = 0.601;
F = 0.00972;
G = 0.003661;
   
% convert wavelengths to wave number in um^-1
s2 = (1 ./ lambda).^2;

% calculate wavelength dependent part of index
ns = 1.0 + 1.0e-8 * ( A + B./(130.0 - s2) + C./(38.9 - s2) );

% calculate corrections for p, t
X = (1.0 + 1.0e-8 .* pres .* (E - F .* temp)) ./ (1.0 + G .* temp);
ntp = 1.0 + pres .* (ns - 1.0) .* X ./ D;

% correct for water vapor and CO2 using the NIST formula
pv = 0.01 * relh .* water_svp(temp);
ri = ntp - ( 292.75e-10./(temp + 273.15) ) .* (3.7345 - 0.0401 * s2) .* pv;

nk = complex(ri);

return

function [svp] = water_svp(temp)
% function [svp] = water_svp(temp)
%
% water_svp: calculate the saturation vapor pressure of water at a 
%            specified temperature t when the relative humidity 
%            is known. The IAWPS (International Association for the 
%            Properties of Water and Steam) formula is used to 
%            calculate the water pressure
%
% temp: temperature in deg C
% svp : saturation vapor pressure in Pa
%
% Reference:
%    Engineering Metrology Toolbox, http://emtoolbox.nist.gov
%

% Status: OK
% ---------------------------------------------------------

% convert t to absoute temperature
T = temp + 273.15;

% set up some constants
K1  =  1.16705214528E+03;
K2  = -7.24213167032E+05;
K3  = -1.70738469401E+01;
K4  =  1.20208247025E+04;
K5  = -3.23255503223E+06;
K6  =  1.49151086135E+01;
K7  = -4.82326573616E+03;
K8  =  4.05113405421E+05;
K9  = -2.38555575678E-01;
K10 =  6.50175348448E+02;
A1 = -13.928169;
A2 =  34.7078238;
A3 =  661.657;

if temp > 0
 
   omega = T + K9 / (T - K10);
   A = omega * (omega + K1) + K2;
   B = omega * (omega * K3 + K4) + K5;
   C = omega * (omega * K6 + K7) + K8;
   X = sqrt(B^2 - 4 * A * C) - B;
   svp = 1.0e6 * (2 * C / X)^4;

else

  theta = T / 273.16; % Note: triple point T is 273.16 C
  Y = A1 * (1 - theta^-1.5) + A2 * (1 - theta^-1.25);
  svp = A3 * exp(Y);
      
end

return
