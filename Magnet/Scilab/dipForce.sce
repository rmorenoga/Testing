function [Fr, Ft, Fp]=forceField()
    
//    To be implemented
//    Imputs:
//        Br, D, t
//        position and direction of magnet 1
//        position and direction of magnet 2
//    Computation (in spherical coordinates):
//        calculate "dipolefield" for magnet 1: Bm1 (in spherical coordinates)
//        Fr = r_derivative(r_m2*r_Bm1)
//        Ft = (1/r)*theta_derivative(theta_m2*theta_Bm1)
//        Fp = (1/(r*sin(theta)))*phi_derivative(phi_m2*phi_Bm1)
//        
//    These components can be translated to cartesian using "sph2cartvect"

 
