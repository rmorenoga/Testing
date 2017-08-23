
//Magnet attributes
Br = 13200
D = 1/2
t = 1/8


//Rotation Angle
angle = 0

//Rotation Axis
rotaxis = [1 0 0]

//Translation
tx = 0
ty = 0.2
tz = -0.1

//Points to plot
x = linspace(-0.5,1,30);
y = linspace(-0.5,1,30);
z = linspace(-0.5,1,30);

//Only 2D plots are possible the other dimension will be set to 0
//Create a mesh of points in the selected plane
//[X,Z] = meshgrid(x,z)
[X,Y] = meshgrid(x,y)
//[Y,Z] = meshgrid(y,z)

//[Xcomp,Ycomp,Zcomp]=calcRTMagfield(zeros(30,30),Y,Z,rotaxis,angle,tx,ty,tz,Br,D,t)

[Xcomp,Ycomp,Zcomp]=calcRTMagfield(X,Y,zeros(30,30),rotaxis,angle,tx,ty,tz,Br,D,t)


//disp(Y)
//disp(Z)

//Rotate the original points in the opposite direction
//[RX,RY,RZ] = rotate3d(zeros(30,30),Y,Z,[1 0 0 -angle])

//Rotate the translation in the opposite direction
//[rtx,rty,rtz] = rotate3d(tx,ty,tz,[1 0 0 -angle])

//Apply the translation to the rotated points
//RX = RX - rtx
//RY = RY - rty
//RZ = RZ - rtz

//Convert meshed points from cartesian coordinates to spherical coordinates
//[T,P,R]=cart2sph(X,zeros(30,30),Z)
//[T,P,R]=cart2sph(X,Y,zeros(30,30))
//[T,P,R]=cart2sph(RX,RY,RZ);

//Calculate the field using the spherical coordinates
//[Rcomp,Tcomp]=dipolefield(R,T,Br,D,t);

//Transform the resulting vector field from spherical coordinates to cartesian coordinates
//[Xcomp, Ycomp, Zcomp]=sph2cartvect(Tcomp, 0, Rcomp,T,P);

//Rotate the vector components in the original direction
//[rXcomp,rYcomp,rZcomp] = rotate3d(Xcomp,Ycomp,Zcomp,[1 0 0 angle])


//Translate rotated points
//[tx,ty,tz] = translate3d(rx,ry,rz,0,-0.1,0.1)

//Create new empty figure canvas
scf()

//Use champ to plot vector field, only for 90 degrees rotation increments
//When in odd increments of 90 degrees rYcomp and rZcomp should not be transposed
//When in even increments rYcomp and rZcomp should be transposed
//champ(x,z,Xcomp',Zcomp')
champ(x,y,Xcomp',Ycomp')
//champ(y,z,Ycomp',Zcomp')








