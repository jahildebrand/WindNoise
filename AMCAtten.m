function [alpha] = AMCAtten(f,Z,T,S,pH)
%  Attenuation of sound in db/km 
%           f is frequency in kHz
%           Z is depth in m  
%           T is temperature in deg-C  
%           S is salinity in PSU      
%           pH is pH (default is 8)
%       Ainslie, M.A. and J. G. McColm, 1998. A simplified
%       formula for viscous and chemical absorption in sea water.
%       Journal of the Acoustical Society of America, 103, 1671-72.
% 
    f1 = 0.78 * sqrt(S/35.0) *  exp(T/26.0);
    f2 = 42.0 *  exp(T/17.0);
    fsq = f.^2;
    alpha1 = fsq .* 0.106 .*  exp((pH-8)/0.56) .* f1 ./(fsq + f1^2);
    alpha2 = 0.52 * (1+T/43.0) * (S/35.0) *  exp(-Z/6000.0);
    alpha2 = alpha2 .* fsq .* f2 ./ (fsq + f2^2);
    alpha3 = 0.00049 .*  fsq .* exp(-(T./27.0 + Z./17000.0));
    alpha = (alpha1+alpha2+alpha3);
