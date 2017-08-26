function mag=dipForce(x,m1dir,rotaxis,rotangle,tx,ty,tz,Br,D,t)

//Calculates the maginitude of the force between two dipoles by using 
// m1 dot B

//        x point at which the force will be calculated
//        mag magnitude of the force at point x

//Calculate the components of the magnetic field B at the given point
[xcomp,ycomp,zcomp]=calcRTMagfield(x(1),x(2),x(3),rotaxis,rotangle,tx,ty,tz,Br,D,t)

//Magnitude of the dipole moment m1
m1mag = dipolemoment(Br,D,t)

//Normalize the direction vector
m1d = m1dir./norm(m1dir)

//Dipole moment vector
m1 = m1mag.*m1d

//Dotproduct between m1 and B
mag = dotproduct(m1(1),m1(2),m1(3),xcomp,ycomp,zcomp)

endfunction
