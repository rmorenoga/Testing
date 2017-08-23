function [Xcomp,Ycomp,Zcomp]=calcRTMagfield(x,y,z,rotaxis,rotangle,tx,ty,tz,Br,D,t)
    //Calculates the translated and rotated magnetic vector field
    //x,y,z the points where the magnetic field will be calculated
    //rotaxis  a vector containing the rotation axis in the form [x y z] 
    //rotangle the rotation angle
    //tx,ty,tz the translation measured from the origin
    //Xcomp,Ycomp,Zcomp The components of the vector field in each point x,y,z
    
    //Rotate the original points in the opposite direction
    [RX,RY,RZ] = rotate3d(x,y,z,[rotaxis -angle])
    
    //Rotate the translation in the opposite direction
    [rtx,rty,rtz] = rotate3d(tx,ty,tz,[rotaxis -angle])
    
    //Apply the rotated translation to the rotated points
    RX = RX - rtx
    RY = RY - rty
    RZ = RZ - rtz
    
    //Convert rotated and translated points from cartesian coordinates to spherical coordinates
    [T,P,R]=cart2sph(RX,RY,RZ);
    
    //Calculate the field using the spherical coordinates
    [Rcomp,Tcomp]=dipolefield(R,T,Br,D,t);
    
    //Transform the resulting vector field from spherical coordinates to cartesian coordinates
    [rawXcomp, rawYcomp, rawZcomp]=sph2cartvect(Tcomp, 0, Rcomp,T,P);
    
    //Rotate the vector components in the original direction
    [Xcomp,Ycomp,Zcomp] = rotate3d(rawXcomp,rawYcomp,rawZcomp,[rotaxis angle])
    
endfunction
