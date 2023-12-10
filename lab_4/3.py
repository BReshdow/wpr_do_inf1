import random
from math import *


def sin_rnd(n):
    rnd_lst = []
    s = 0
    for i in range(n):
        print(n - i)
        x = random.uniform(0, pi)
        y = random.random()
        rnd_lst.append((x, y))
        if y <= sin(x):
            s += 1
    z = pi * s / n
    print(n, z)


sin_rnd(1_000_000_000)
