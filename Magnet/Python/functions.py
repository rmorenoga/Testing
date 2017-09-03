import numpy as np
from math import *

u0 = pi*4.0e-7 # N/Am

def volume(D, t):
	"""
	Takes the diameter D and thickness t in inches
	transforms them into meters and calculates
	the volume of the cylinder in m3. (scalar)
	"""
	f= 0.0254 # inch meter factor
	mD = D*f;
	mr = 0.5*mD;
	mt = t*f;
	V = pi*mr*mr*mt

	return V

def dipMoment(Br, V):
	"""
	Calculates the effective dipole moment of a
	cylindrical magnet. (scalar)
	Transforms Br in Gauss to TBr in Teslas
	"""
	TBr = Br*0.0001 # Gauss to Tesla
	m = V*TBr/u0 # A m2

	return m

# Now the hard part, work with vectors

# Define the magnetic moment vector

def dipMomentVec(m, i, j, k):
	"""
	Returns a vector given dipole moment magnitude
	The vector has direction i,j,k (must be 0 or 1)
	"""
	norm = sqrt(i*i + j*j + k*k) # normalizing factor
	mVec = (m/norm) * np.array([i,j,k])

	return mVec

def dipMomentVec2(m, dirvec):
	"""
	Returns a vector given dipole moment magnitude
	The vector has direction dirvec (a numpy array)
	"""
	norm =  np.linalg.norm(dirvec)
	mVec = (m/norm) * dirvec

	return mVec
	
def dipField(mVec, pVec, r0Vec):
	"""
	Returns the magnetic field components at pVec due  
	to the dipole mVec positioned at r0Vec in cartesian
	coordinates
	"""
	# Define rVec and its norm r
	rVec = pVec - r0Vec
	r = np.linalg.norm(rVec)
	
	B = (u0/4*pi)*((3*(mVec.dot(rVec)*rVec)/r**5)-mVec/r**3)
	
	return B[0], B[1], B[2], B

def dipfield2(mVec,r0Vec,x,y,z):
	
	rVecx = x - r0Vec[0]
	rVecy = y - r0Vec[1]
	rVecz = z - r0Vec[2]

	r = (rVecx**2 + rVecy**2 + rVecz**2)**0.5

	mdr = dotproduct(mVec[0],mVec[1],mVec[2],rVecx,rVecy,rVecz)

	Bx = (u0/4*pi)*((3*(mdr*rVecx)/(r**5))-mVec[0]/(r**3)) 
	By = (u0/4*pi)*((3*(mdr*rVecy)/(r**5))-mVec[1]/(r**3))
	Bz = (u0/4*pi)*((3*(mdr*rVecz)/(r**5))-mVec[2]/(r**3))

	return Bx, By, Bz

def dotproduct(x1,y1,z1,x2,y2,z2):
	
	m = x1*x2 + y1*y2 + z1*z2

	return m

