import numpy as np

Ns = 1001

theta = np.linspace(0, 2*np.pi, Ns)
r = np.abs(np.cos(theta))

file = open("Data.dat", "w")
for i in range(Ns):
    file.write("{:21.14E} {:21.14E}\n".format(theta[i], 20*np.log10(np.abs(r[i]))))
file.close()
