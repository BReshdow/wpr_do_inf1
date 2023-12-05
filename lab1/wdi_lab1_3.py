print("Rozwiazywanie rownania typu ax^2 + bx + c = 0.")
a = int(input("a = "))
b = int(input("b = "))
c = int(input("c = "))


if a:
    d = b * b - (4 * a * c)
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
            print("d musi byc >= 0!")
else:
    if b:  # 0x^2 + bx + c
        print("x = ", -c/b)
    else:  # 0x^2 + 0x + c = 0
        if c:
            print("taki x nie istnieje")
        else:
            print("x = wszystkie liczby")
