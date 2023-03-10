import numpy as np
from scipy.special import jv

Ns = 1001

x = np.linspace(0, 20.0, Ns)
y0 = jv(0, x)
y1 = jv(1, x)
y2 = jv(2, x)
y3 = jv(3, x)

file = open("Data.dat", "w")

for i in range(Ns):
    file.write("{:21.14E} {:21.14E} {:21.14E} {:21.14E} {:21.14E}\n".format(x[i], y0[i], y1[i], y2[i], y3[i]))

file.close()
