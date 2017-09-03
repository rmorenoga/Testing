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
# Position of dipole (r0) in meters
x0 = 0.0; y0 = 0.1; z0 = 0.0;
r0Vec = np.array([x0, y0, z0])
# Direction of dipole (+/- 1 or 0)
# will be normalized
i = 0
j = -1
k = 0

V = volume(D,t)
m = dipMoment(Br, V)
mVec = dipMomentVec(m,i,j,k)

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
a = np.linspace(-0.5, 0.5, n)

# Write csv file
with open('./bField.csv', 'wb') as csv_file:
	writer = csv.writer(csv_file, delimiter=',')
	writer.writerow(['x','y','z','Bx','By','Bz'])
	# Save x y z
	for z in np.nditer(a):
		for y in np.nditer(a):
			for x in np.nditer(a):
				# skip points were the dipole is to avoid division by 0
				if x == x0 and y == y0 and z == z0:
					row = [x, y, z, 0.0, 0.0, 0.0]
				else:
					pVec = np.array([x,y,z])
					[Bx, By, Bz, B] = dipField(mVec, pVec, r0Vec)
					row = [x, y, z, Bx, By, Bz]
				writer.writerow(row)
	 
