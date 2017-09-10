function [fx,fy,fz] = forceatpointconnector(cas,x,dirvec)
    
    //Calculates the force of the magnet connector on 
	//a magnet in position x and orientation dirvec,
    //x is a vector of the form [x,y,z]
	//dirvec is a vector of the form [i,j,k]

	// MAGNET PARAMETERS, the same for all magnets
	f= 0.0254 //Conversion factor from inches to meters
	D = (1/2.0)*f; // Meters
	t = (1/8.0)*f; // Meters
	Br = 13200 // Gauss
    m = dipolemoment(Br,D,t) // Magnet scalar moment

    // Calculate dipole moment vector of the magnet
	// over which the force will be exerted
	mVec = dipmomentVec(m,dirvec)

        //Caculate the gradient of the dotproduct at point x which is the force  at that point
        f = numderivative(list(dipScalar,cas,mVec,Br,D,t), x)
                
        fx = f(1)
        fy = f(2)
        fz = f(3)


    
endfunction

    
