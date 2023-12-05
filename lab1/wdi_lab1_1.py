print("Obliczanie maksimum.")
a = int(input("Podaj a: "))
b = int(input("Podaj b: "))
c = int(input("Podaj c: "))

if a > b:  # a > b
    if a > c:
        print("a jest najwieksze.")
    else:  # c > = a
        if c > a:
            print("c jest najwieksze.")
        else:  # c == a
            print("a i c sa najwieksze.")
else:  # b >= a
    if b > a:
        if b > c:
            print("b jest najwieksze.")
        else:  # b <= c
            if c > b:
                print("c jest najwieksze.")
            else:
                print("b i c sa najwieksze.")
    else:  # b == a
        if b > c:
            print("a i b sa najwieksze.")
        else:  # b <= c
            if c > b:
                print("c jest najwieksze.")
            else:  # c == b == a
                print("wszystkie liczby sa rowne.")
