print("Trojkat.")
a = int(input("a = "))
b = int(input("b = "))
c = int(input("c = "))
if a + b > c:
    if a + c > b:
        if b + c > a:
            pol = (a + b + c) / 2
            s = (pol * (pol - a) * (pol - b) * (pol - c)) ** (1 / 2)
            print("Pole trojkata = ", s)
            if a * a + b * b == c * c:
                print("Trojkat jest prostokatny")
            else:
                if a * a + b * b < c * c:
                    print("Trojkat jest rozwartokatny")
                else:
                    print("Trojkat jest ostrokatny")
        else:
            print("Trojkat nie istnieje")
    else:
        print("Trojkat nie istnieje")
else:
    print("Trojkat nie istnieje")