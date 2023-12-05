print("Rownanie kwadratowe")
a = int(input("a = "))
b = int(input("b = "))
c = int(input("c = "))
d = b ** 2 - (4 * a * c)
if d > 0:
    x1 = ((-b) - (d ** (1 / 2))) / 2
    x2 = ((-b) + (d ** (1 / 2))) / 2
    print("x1 = ", x1)
    print("x2 = ", x2)
else:
    if d == 0:
        x = (-b) / (2 * a)
        print("x = ", x)
    else:
        print("delta musi byc wieksza/rowna 0")