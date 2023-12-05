print("Sprawdzanie trojkata.")
a = int(input("a = "))
b = int(input("b = "))
c = int(input("c = "))

if a + b > c:
    if a + c > b:
        if b + c > a:
            polobw = (a + b + c) / 2
            pole = (polobw * (polobw - a) * (polobw - b) * (polobw - c)) ** (1 / 2)
            print("Pole tego trojkata = ", pole)

            if a * a + b * b == c * c:
                print("Ten trojkat jest prostokatny.")
            else:
                if a * a + b * b > c * c:
                    print("Ten trojkat jest ostrokatny.")
                else:
                    if a * a + b * b < c * c:
                        print("Ten trojkat jest rozwartokatny.")
        else:
            print("Taki trojkat nie istnieje!")
    else:
        print("Taki trojkat nie istnieje!")
else:
    print("Taki trojkat nie istnieje!")
