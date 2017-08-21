function [rcomp,thetacomp]=dipolefield(r,theta,u0,Br)
    
    m = dipolemoment(0.001,Br,u0)
    
    fact = (u0*abs(m))./(4*%pi*abs((r.^3)))

    rcomp = 2*fact.*cos(theta)
    
    thetacomp = fact.*sin(theta)
    
    
endfunction
