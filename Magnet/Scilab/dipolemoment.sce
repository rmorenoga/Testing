function m = dipolemoment(Br,D,t)
// calculates the effective dipole moment of a
// cylindrical magnet
// u0 is a universal constant u0 = 4*%pi*1e-7
// Br in Gauss 
// D and t in inches 

    u0 = (4e-7)*%pi
    //m = (2*%pi*(r.^3)*Br)/u0 
    TBr = Br*0.0001 // Gauss to Tesla (scalar)

    V = volume(D,t) // volume(D[in],t[in])
    
    // Correction factor due to unmodeled dynamics
    
    CF = 1/4.74
    
    m = CF*V*TBr/u0 // in A m2 (scalar)
    
    
endfunction
