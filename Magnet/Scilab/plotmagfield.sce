
//Magnet attributes
Br = 13200
D = 1/2
t = 1/8

//Points to plot
x = linspace(0.1,1,2);
z = linspace(-0.5,1,30);
y = linspace(-0.5,1,30);

//disp(x)
//disp(y)
//disp(z)

//Only 2D plots are possible the other dimension will be set to 0
//Create a mesh of points in the selected plane
//[X,Z] = meshgrid(x,z)
//[X,Y] = meshgrid(x,y)
[Y,Z] = meshgrid(y,z)

//disp(Y)
//disp(Z)

//Convert meshed points from cartesian coordinates to spherical coordinates
//[T,P,R]=cart2sph(X,zeros(30,30),Z)
//[T,P,R]=cart2sph(X,Y,zeros(30,30))
[T,P,R]=cart2sph(zeros(30,30),Y,Z);

//Calculate the field using the spherical coordinates
[Rcomp,Tcomp]=dipolefield(R,T,Br,D,t);

//Transform the resulting vector field from spherical coordinates to cartesian coordinates
[Xcomp, Ycomp, Zcomp]=sph2cartvect(Tcomp, 0, Rcomp,T,P);

//disp(Ycomp)
//disp(Zcomp)

//Calculate the tip point of each vector from the origin by suming the components and the postion of each arrow
Xtip = Xcomp + zeros(30,30)
Ytip = Ycomp + Y
Ztip = Zcomp + Z

//disp(Ytip)
//disp(Ztip)

angle = 0

//Rotate the tip point of each vector around the origin
[rXtip, rYtip, rZtip]=rotate3d(Xtip, Ytip, Ztip, [1 0 0 angle])

//disp("rYtip")
//disp(rYtip)
//disp("rZtip")
//disp(rZtip)

//Rotate the position of each arrow around the origin
[RX,RY,RZ] = rotate3d(zeros(30,30),Y,Z,[1 0 0 angle])

disp("RY")
disp(RY)
disp("RZ")
disp(RZ)

//Rotate original points without meshing (champ requierement)
[rx,ry,rz] = rotate3d(zeros(1,30),y,z,[1 0 0 angle])

//Substract the rotated position from the rotated tip to find the rotated
//vector components
rXcomp = rXtip - RX
rYcomp = rYtip - RY
rZcomp = rZtip - RZ

//disp("rYcomp")
//disp(rYcomp)
//disp("rZcomp")
//disp(rZcomp)

//disp(rx)
disp(ry)
disp(rz)


//Translate rotated points
[tx,ty,tz] = translate3d(rx,ry,rz,0,-0.1,0.1)

//Create new empty figure canvas
scf()

//Use champ to plot vector field, only for 90 degrees rotation increments
//When in odd increments of 90 degrees rYcomp and rZcomp should not be transposed
//When in even increments rYcomp and rZcomp should be transposed
//champ(x,z,Xcomp',Zcomp')
//champ(x,y,Xcomp',Ycomp')
champ(ty,tz,rYcomp',rZcomp')








