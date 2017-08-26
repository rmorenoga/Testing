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
ty = 0
tz = 0

//Points to plot
x = linspace(-0.5,1,30);
y = linspace(-0.5,1,30);
z = linspace(-0.5,1,30);

//Only 2D plots are possible the other dimension will be set to 0
//Create a mesh of points in the selected plane
[X,Z] = meshgrid(x,z)
//[X,Y] = meshgrid(x,y)
//[Y,Z] = meshgrid(y,z)

//[Xcomp,Ycomp,Zcomp]=calcRTMagfield(zeros(30,30),Y,Z,rotaxis,angle,tx,ty,tz,Br,D,t)
[Xcomp,Ycomp,Zcomp]=calcRTMagfield(X,zeros(30,30),Z,rotaxis,angle,tx,ty,tz,Br,D,t)
//[Xcomp,Ycomp,Zcomp]=calcRTMagfield(X,Y,zeros(30,30),rotaxis,angle,tx,ty,tz,Br,D,t)

//Create new empty figure canvas
scf()

//Use champ to plot vector field, only for 90 degrees rotation increments
//When in odd increments of 90 degrees rYcomp and rZcomp should not be transposed
//When in even increments rYcomp and rZcomp should be transposed
champ(x,z,Xcomp',Zcomp')
//champ(x,y,Xcomp',Ycomp')
//champ(y,z,Ycomp',Zcomp')

scf()

f = dotproduct(0,0,-1,Xcomp,Ycomp,Zcomp)

surf(X,Z,f)










