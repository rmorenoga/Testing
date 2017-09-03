#!/usr/bin/python3

import numpy as np
from math import *
import csv

from functions import *

# MATERIAL PARAMETERS

D = 1.0/8;  # Inches
t = 0.5; # Inches
u0 = pi*4.0e-7 # N/Am
Br = 1.32e4 # Gauss

# POSITION/DIRECTION PARAMETERS
# Position of dipole 1 in meters
x01 = 0.0; y01 = 0.1; z01 = 0.0;
r0Vec1 = np.array([x01, y01, z01])
# Direction of dipole 1 (+/- 1 or 0)
# will be normalized
i1 = 0
j1 = -1
k1 = 0

V1 = volume(D,t)
m1 = dipMoment(Br, V1)
mVec1 = dipMomentVec(m1, i1, j1, k1)

# Position of dipole 2 in meters
x02 = 0.0; y02 = 0.0; z02 = 0.0;
r0Vec2 = np.array([x02, y02, z02])
# Direction of dipole 2 (+/- 1 or 0)
# will be normalized
i2 = 0
j2 = 1
k2 = 0

V2 = volume(D,t)
m2 = dipMoment(Br, V2)
mVec2 = dipMomentVec(m2, i2, j2, k2)

# Using np.linspace and np.meshgrid have proven to be 
# extremely complicated and confusing. Will try to
# create a simple file with x y z Bx By Bz

# Checking dipField in 3D at position p
# IT WORKS!!
#x = 0.0; y = 0.0; z = 0.0;
#pVec = np.array([x,y,z])
#B = dipField(mVec, pVec, r0Vec)

# Trying to get the components of the B Field
# IT WORKS!
#[Bx, By, Bz] = dipField(mVec, pVec, r0Vec) 

# Iterating over a "grid" of n elements per side
n = 10
a = np.linspace(-0.25, 0.25, n)

# Write csv file
with open('./2bField.csv', 'wb') as csv_file:
	writer = csv.writer(csv_file, delimiter=',')
	writer.writerow(['x','y','z','Bx','By','Bz'])
	# Save x y z
	for z in np.nditer(a):
		for y in np.nditer(a):
			for x in np.nditer(a):
				# skip points were the dipoles are to avoid division by 0
				stat1 = x == x01 and y == y01 and z == z01
				stat2 = x == x02 and y == y02 and z == z02
				if stat1 or stat2:
					row = [x, y, z, 0.0, 0.0, 0.0]
				else:
					pVec = np.array([x,y,z])
					[Bx1, By1, Bz1, B1] = dipField(mVec1, pVec, r0Vec1)
					[Bx2, By2, Bz2, B2] = dipField(mVec2, pVec, r0Vec2)
					row = [x, y, z, Bx1+Bx2, By1+By2, Bz1+Bz2]
				writer.writerow(row)
	 
