function [theta,phi,r]=cart2sph(x,y,z)
    // returns theta r and phi in radians
phi = atan(y,x)
theta = atan(sqrt(x.^2 + y.^2),z)
r = sqrt(x.^2 + y.^2 + z.^2)
endfunction
