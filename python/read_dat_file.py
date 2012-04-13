import numpy as np

fd = open('dt.dat', 'rb')
read_data = np.fromfile(file=fd, dtype=np.float32).reshape((5063,128)).transpose()
