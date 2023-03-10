import numpy as np
from scipy.special import jv

Nsx = 601
Nsy = 601

R = 4.0
x = np.linspace(-R, +R, Nsx)
y = np.linspace(-R, +R, Nsy)

x, y = np.meshgrid(x, y, indexing='ij')

def func(x, y):
    return np.cos(x+2*y)

file = open("Data.dat", "w")

for i in range(Nsx):
    for j in range(Nsy):
        file.write("{:21.14E} {:21.14E} {:21.14E}\n".format(x[i, j], y[i, j], func(x[i, j], y[i, j])))
    file.write("\n")

file.close()
