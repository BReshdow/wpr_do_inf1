import random


def rnd(num):
    rnd_lst = []
    s = 0
    for i in range(num):
        rnd_lst.append((random.random(), random.random()))
        if (rnd_lst[i][0] ** 2 + rnd_lst[i][1] ** 2) <= 1:
            s += 1
    z = 4 * s / num
    print(num, s, z)


rnd(1_000)
rnd(10_000)
rnd(100_000)
rnd(1_000_000)
rnd(10_000_000)
