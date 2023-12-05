import math


def sin(x):
    if 2 * x == math.pi:
        return 0.998
    else:
        return None


print(sin(math.pi/2))
print(math.sin(math.pi/2))
