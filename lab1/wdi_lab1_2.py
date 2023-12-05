print("Sprawdzanie trojkata.")
a = int(input("a = "))
b = int(input("b = "))
c = int(input("c = "))

if a + b > c:
    if a + c > b:
        if b + c > a:
            # obliczenie pola trojkata
            polobw = (a + b + c) / 2
            pole = (polobw * (polobw - a) * (polobw - b) * (polobw - c)) ** (1 / 2)
            print("Pole tego trojkata = ", pole)
            # przestawienie najwiekszej liczby na zmienna c
            if a >= b:
                if a >= c:
                    a, c = c, a
            else:
                if b >= c:
                    b, c = c, b
            # badanie typu trojkata
            if a * a + b * b == c * c:
                print("Ten trojkat jest prostokatny.")
            else:
                if a * a + b * b > c * c:
                    print("Ten trojkat jest ostrokatny.")
                else:
                    print("Ten trojkat jest rozwartokatny.")
        else:
            print("Taki trojkat nie istnieje!")
    else:
        print("Taki trojkat nie istnieje!")
else:
    print("Taki trojkat nie istnieje!")
