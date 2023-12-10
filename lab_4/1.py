import random
random.seed(11)
a = 10*[0]
print(a)
for i in range(10):
    a[i] = random.randint(0, 100)
print(a)
max_ = 0
max_2 = 0
for i in a:
    if i > max_:
        max_2 = max_
        max_ = i
    elif i > max_2:
        max_2 = i
print(max_)
print(max_2)
print(sorted(a))
