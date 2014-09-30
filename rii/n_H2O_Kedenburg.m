function [nk] = n_H2O_Kedenburg(lambda)
%function [nk] = n_H2O_Kedenburg(lambda)
%
% S. Kedenburg, M. Vieweg, T. Gissibl, and H. Giessen. Linear refractive index and absorption measurements of nonlinear optical liquids in the visible and near-infrared spectral region, <a href="http://dx.doi.org/10.1364/OME.2.001588"><i>Opt. Mat. Express</i> <b>2</b>, 1588-1611 (2012)</a>
%
% Distilled water, 20.0 °C.
%
% INPUT
% lambda :  vector with wavelengths in micrometer
%
% OUTPUT
% nk :      column vector with refractive index at lambda
%
% Converted from refractiveindex.info database file.
%
    range = [0.5 1.6];
    coeff = [0 0.75831 0.01007 0.08495 8.91377];
    nk = n_rii(lambda, coeff, range, 2);
end
