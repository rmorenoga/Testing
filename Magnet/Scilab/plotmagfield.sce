
Br = 13200
D = 1/2
t = 1/8

x = linspace(0.1,1,30);
z = linspace(0.1,-1,30);
y = linspace(0.1,-1,30);

//[X,Z] = meshgrid(x,z)
//[X,Y] = meshgrid(x,y)
[Y,Z] = meshgrid(y,z)

//[T,P,R]=cart2sph(X,zeros(30,30),Z)
//[T,P,R]=cart2sph(X,Y,zeros(30,30))
[T,P,R]=cart2sph(zeros(30,30),Y,Z)


[Rcomp,Tcomp]=dipolefield(R,T,Br,D,t);

[Xcomp, Ycomp, Zcomp]=sph2cartvect(Tcomp, 0, Rcomp,T,P);

//champ(x,z,Xcomp',Zcomp')
//champ(x,y,Xcomp',Ycomp')
champ(y,z,Ycomp',Zcomp')








