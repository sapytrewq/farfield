# -*- coding: utf-8 -*-
"""
Created on Thu Jul 23 15:30:41 2020

@author: kaveh
"""


# generating a known good file

import math

phivals = list(range(0,182,2))
thetavals = list(range(0, 190, 10))

f = open("lambertian.csv", "w")

# writing header
f.write(",")
for el in phivals:
    f.write(str(el) + ",")
    
# writing data
    
for theta in thetavals:
    f.write("\n")
    f.write(str(theta)+",")
    for phi in phivals:
        f.write(str(math.sin(math.pi*phi/180))+",")
f.write("\n")

f.close()
