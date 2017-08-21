function [thetacomp, phicomp, rcomp]=cart2sphvect(xcomp, ycomp, zcomp,theta,phi)
    
    rcomp =  sin(theta).*cos(phi).*xcomp + sin(theta).*sin(phi).*ycomp + cos(theta).*zcomp
    
    thetacomp = cos(theta).*cos(phi).*xcomp + cos(theta).*sin(phi).*ycomp - sin(theta).*zcomp
    
    phicomp = -sin(phi).*xcomp + cos(phi).*ycomp
    
    
endfunction
