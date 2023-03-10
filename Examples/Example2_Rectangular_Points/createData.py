import numpy as np
import random

Ns = 1001
Nss = 51

R = 0.2
x = np.linspace(0, 2.0, Ns)
y = np.cos(2.0*np.pi*x)

xn = np.linspace(0, 2.0, Nss)
yn = np.cos(2.0*np.pi*xn)

file = open("Data1.dat", "w")
for i in range(Ns):
    file.write("{:21.14E} {:21.14E}\n".format(x[i], y[i]))
file.close()

file = open("Data2.dat", "w")
for i in range(Nss):
    file.write("{:21.14E} {:21.14E}\n".format(xn[i], yn[i]+random.uniform(-R, +R)))
file.close()
