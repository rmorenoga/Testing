function [rcomp,thetacomp]=dipolefield(r,theta,Br,D,t)
    // Calculates the magnetic field due to a dipole
    // pointing in the z direction at 0,0,0
    // r in meters, theta in radians are parameters
    // Br in Gauss
    // D and t in inches

    // u0 is a universal constant u0 = 4*%pi*1e-7
    
    u0 = (4e-7)*%pi
    
    m = dipolemoment(Br,D,t)
    
    fact = (u0*abs(m))./(4*%pi*abs((r.^3)))

    rcomp = 2*fact.*cos(theta)
    
    thetacomp = fact.*sin(theta)
    
    
endfunction
