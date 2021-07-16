# WindNoise
Model for wind-generated noise in the ocean.
Code written for MATLAB 2020a.  For details of model see: "An empirical model for wind-generated ocean noise"
The Journal of the Acoustical Society of America 149, 4516 (2021); https://doi.org/10.1121/10.0005430
John A. Hildebrand, Kaitlin E. Frasier, Simone Baumann-Pickering, and Sean M. Wiggins.
Main code requests user input for depth and then outputs plots for Noise versus frequency and Noise versus wind speed.  The offset, frequency dependence (m), and wind dependence (n) parameters are also plotted.
Function AMCAtten.m is used to calculate the sound speed attenuation using the equation of Ainslie, M.A. and J. G. McColm, (1998) 
