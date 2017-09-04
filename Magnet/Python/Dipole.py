
# coding: utf-8

# # Dipole interaction force

# ## Imports and constants

# In[284]:


from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
import numpy as np
from math import *
u0 = pi*4.0e-7 # N/Am


# ## Load external functions

# In[285]:


get_ipython().magic('run ./functions.py')


# ## Material Parameters

# In[286]:


D = 1.0/8;  # Inches?
t = 0.5; # Inches?
u0 = pi*4.0e-7 # N/Am
Br = 1.32e4 # Gauss


# ## Field generating dipole moment

# In[287]:


# POSITION/DIRECTION PARAMETERS
# Position of dipole (r0) in meters
x0 = 0.0; y0 = 0.1; z0 = 0.0;
r0Vec = np.array([x0, y0, z0])
# Direction of dipole
# will be normalized
i = 0;j = 0;k = 1;
dirvec = np.array([i,j,k])
# Calculate dipole moment vector
V = volume(D,t)
m = dipMoment(Br, V)
mVec = dipMomentVec2(m, dirvec)


#  ## Create a mesh of points and find field at them

# In[288]:


x = np.arange(-0.5, 0.5, 0.1)
y = np.arange(-0.5, 0.5, 0.1)
z = np.arange(-0.5, 0.5, 0.1)
X,Y,Z = np.meshgrid(x,y,z)
X2,Z2 = np.meshgrid(x,z)
Bx,By,Bz = dipfield2(mVec,r0Vec,X,Y,Z)
Bx2,By2,Bz2 = dipfield2(mVec,r0Vec,X2,0.1,Z2)


# ## Plot first dipole field

# In[289]:


fig = plt.figure(figsize=(12, 6))
#ax = fig.gca(projection='3d')
ax = [fig.add_subplot(121, projection='3d'),
      fig.add_subplot(122)]
ax[0].set_xlabel('X')
ax[0].set_ylabel('Y')
ax[0].set_zlabel('Z')
ax[0].quiver(X, Y, Z, Bx, By, Bz, length=0.1, normalize=True)
ax[1].set_xlabel('X')
ax[1].set_ylabel('Z')
#Normalize arrows
Bx2n = Bx2/((Bx2**2+Bz2**2)**0.5)
Bz2n = Bz2/((Bx2**2+Bz2**2)**0.5)
## Plot in y = 0.1
ax[1].quiver(X2,Z2,Bx2n,Bz2n)
plt.show()


# ## Calculate scalar field

# In[290]:


# Define the direction of the second dipole (same magnetic properties)
# Direction of dipole, will be normalized
i = 0;j = 0;k = -1;
dirvec2 = np.array([i,j,k])
# Calculate dipole moment vector
mVec2 = dipMomentVec2(m, dirvec2)
# Calculate the dot product 
mdotB = dotproduct(mVec2[0],mVec2[1],mVec2[2],Bx,By,Bz)
# Do the same for 2d slice
mdotB2 = dotproduct(mVec2[0],mVec2[1],mVec2[2],Bx2,By2,Bz2)


# ## Plot scalar field

# In[291]:


fig2 = plt.figure(figsize=(12, 6))
ax2 = [fig2.add_subplot(121, projection='3d'),
      fig2.add_subplot(122)]
ax2[0].set_xlim(-0.5, 0.5)
ax2[0].set_ylim(-0.5, 0.5)
ax2[0].set_zlim(-0.5, 0.5)
ax2[0].set_xlabel('X')
ax2[0].set_ylabel('Y')
ax2[0].set_zlabel('Z')
scat = ax2[0].scatter(X,Y,Z,c = mdotB)
fig2.colorbar(scat)
ax2[1].set_xlabel('X')
ax2[1].set_ylabel('Z')
ax2[1].scatter(X2,Z2,c = mdotB2)
plt.show()


# ## How gradient works in a 3D array

# In[292]:


k = np.array([[[1 ,2],[3,4]],[[5,6],[7,8]]])
d3,d2,d1 = np.gradient(k)
# d1 calculates difference of the 1st level arrays that is [[[->1,->2],[3,4]],[[5,6],[7,8]]]
display("d1",d1)
# d2 calculates difference of the 2nd level arrays that is [[[->1,2],[->3,4]],[[5,6],[7,8]]]
display("d2",d2)
# d3 calculates difference of the 3rd level arrays that is [[[->1,2],[3,4]],[[->5,6],[7,8]]]
display("d3",d3)


# ## Calculate gradient of scalar field to find force
# In the 3d case (X,Y,Z) meshgrid makes X vary in the 2nd level, Y vary on the 3rd level and Z on the 1st level.
# Display X,Y and Z to check this
# 
# 
# In the 2d case (X2,Z2) meshgrids makes X vary on the 1st level and Z vary on the 2nd level. Display X2 and Z2 to check this

# In[293]:


# Calculate the grdaient of mdotB by specifying coordinates
fy,fx,fz = np.gradient(mdotB,0.1,0.1,0.1)
# Do the same for 2D slice
fz2,fx2 = np.gradient(mdotB2,0.1,0.1)


# ## Plot force vector field

# In[295]:


fig3 = plt.figure(figsize=(12, 6))
ax3 = [fig3.add_subplot(121, projection='3d'),
      fig3.add_subplot(122)]
ax3[0].set_xlabel('X')
ax3[0].set_ylabel('Y')
ax3[0].set_zlabel('Z')
ax3[0].quiver(X, Y, Z, fx, fy, fz, length=0.1, normalize=True)
#ax3[0].view_init(0, -90)
ax3[1].set_xlabel('X')
ax3[1].set_ylabel('Z')
#Normalize arrows
fx2n = fx2/((fx2**2+fz2**2)**0.5)
fz2n = fz2/((fx2**2+fz2**2)**0.5)
ax3[1].quiver(X2,Z2,fx2n,fz2n)
plt.show()


# In[ ]:




