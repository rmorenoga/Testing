function mVec = dipmomentVec(m,dirVec)
    
    //Returns a vector given dipole moment magnitude
	//The vector has direction dirvec 

    //Normalize the direction vector
    dirnorm = norm(dirvec)
    
    mVec = m.* (dirVec./dirnorm)
endfunction
