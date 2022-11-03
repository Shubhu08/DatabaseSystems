#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Apr  4 19:45:55 2022

@author: shubhashreedash
"""

import matplotlib.pyplot as plt
from numpy import pi, exp, real, imag, linspace


def spiro(t, R, r, a):
    return a*exp(1j*t*(R+r)/r) + (R+r)*exp(1j*t)  
     

R=8
r=1
a=4

ncycle = 3 # LCM(r1,r2)/r2
num_of_points = int((ncycle*2*pi)/0.01) + 1
print(num_of_points)
t = linspace(0, ncycle*2*pi, num_of_points)

x = (real(spiro(t, R, r, a)) * 0.0001) - 118.289338
y = (imag(spiro(t, R, r, a)) * 0.0001) + 34.021228
plt.plot(x, y)

 
fig = plt.gcf()
fig.gca().set_aspect('equal')
plt.show()

print(list(zip(x,y)))