
# coding: utf-8

# # Dipole interaction force

# ## Imports and constants

# In[65]:


from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
import numpy as np
from math import *
u0 = pi*4.0e-7 # N/Am


# ## Load external functions

# In[66]:


get_ipython().magic('run ./functions.py')


#  ## Create a mesh of points and find field at them

# In[79]:


mVec = np.array([0,0,1])
r0Vec = np.array([0,0.1,0])
x = np.arange(-0.5, 0.5, 0.1)
y = np.arange(-0.5, 0.5, 0.1)
z = np.arange(-0.5, 0.5, 0.1)
X,Y,Z = np.meshgrid(x,y,z)
Bx,By,Bz = dipfield2(mVec,r0Vec,X,Y,Z)


# ## Plot

# In[80]:


fig = plt.figure()
ax = fig.gca(projection='3d')
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.quiver(X, Y, Z, Bx, By, Bz, length=0.1, normalize=True)
plt.show()


# In[ ]:




