import numpy as np

Ns = 1001

x = np.logspace(-2, +2, Ns)
y = np.cos(2.0*np.pi/(x+1))

file = open("Data.dat", "w")
for i in range(Ns):
    file.write("{:21.14E} {:21.14E}\n".format(x[i], y[i]))
file.close()
