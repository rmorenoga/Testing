function [xcomp, ycomp, zcomp]=sph2cartvect(thetacomp, phicomp, rcomp,theta,phi)
    
    xcomp = sin(theta).*cos(phi).*rcomp + cos(theta).*cos(phi).*thetacomp - sin(phi).*phicomp
    
    ycomp = sin(theta).*sin(phi).*rcomp + cos(theta).*sin(phi).*thetacomp + cos(phi).*phicomp
    
    zcomp = cos(theta).*rcomp - sin(theta).*thetacomp  
    
endfunction
