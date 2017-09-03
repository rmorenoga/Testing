//Magnet attributes, both magnets are equal
Br = 13200
D = 1/2
t = 1/8

//Rotation Angle of field B of the first magnet
rotangle = 0

//Rotation Axis of the field B of the first magnet
rotaxis = [1 0 0]

//Translation of the field B of the first magnet
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
[Xcomp,Ycomp,Zcomp]=calcRTMagfield(X,zeros(30,30),Z,rotaxis,rotangle,tx,ty,tz,Br,D,t)
//[Xcomp,Ycomp,Zcomp]=calcRTMagfield(X,Y,zeros(30,30),rotaxis,angle,tx,ty,tz,Br,D,t)

//Create new empty figure canvas
scf()

//Use champ to plot vector field of the first magnet
champ(x,z,Xcomp',Zcomp')
//champ(x,y,Xcomp',Ycomp')
//champ(y,z,Ycomp',Zcomp')

//*************************************************

for i = -0.5:0.1:0.5
    for j = -0.5:0.1:0.5 
        if i ~= 0 | j ~= 0 then
//Point which the force will be calculated at
xf = [i 0 j]

//Direction of the moment of the second magnet
m1dir = [-1 0 1]

//Calculate the magnitude of the force at point x
mag=dipForce(xf,m1dir,rotaxis,rotangle,tx,ty,tz,Br,D,t)

disp(mag,"mag")

//Caculate the gradient of the dotproduct at point x which is the force  at that point
fx = numderivative(list(dipForce,m1dir,rotaxis,rotangle,tx,ty,tz,Br,D,t), xf)

//Display an arrow in a 2d plot showing the vector force

nx = [xf(1) , xf(1) + fx(1) ]
ny = [xf(3) , xf(3) + fx(3) ]

xarrows(nx,ny,1,3)
        end
    end
end

//Display the scalar force field at the same points at which the field B was ploted
scf()

//Calculate the magnitude of the m1 moment
m1m = dipolemoment(Br,D,t)

//Normalize the direction vector
m1d = m1dir./norm(m1dir)

//Dipole moment vector
m1 = m1m.*m1d

f = dotproduct(m1(1),m1(2),m1(3),Xcomp,Ycomp,Zcomp)

surf(X,Z,f)
