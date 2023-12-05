print("Zadanie 1.")
lst_1 = [int(input("Podaj liczbe: ")) for i in range(4)]
for i in lst_1[:-1]:
    print(i / lst_1[-1])


print("Zadanie 2.")
n = int(input("Podaj rozmiar tablicy: "))
lst_2 = [int(input("Podaj liczbe: ")) for i in range(n)]
print("Suma kwadratow liczb wynosi", sum(i**2 for i in lst_2))


print("Zadanie 3.")
lst_3 = []
while True:
    num = int(input("Podaj liczbe: "))
    if not num % 10:
        break
    lst_3.append(num)
print("Najmniejszy element =", min(lst_3))
print("Srednia wczytanych liczb =", sum(lst_3) / len(lst_3))


print("Zadanie 4.")
n = int(input("Podaj rozmiar tablicy: "))
if n >= 3:
    lst_3 = [int(input("Podaj liczbe: ")) for i in range(n)]
    max_lst = [lst_3[0], lst_3[1], lst_3[2]]
    ind = 0
    for num, elem in enumerate(lst_3[:-2]):
        three_lst = [elem, lst_3[num + 1], lst_3[num + 2]]
        if sum(three_lst) > sum(max_lst):
            max_lst = three_lst
            ind = num
    print("Trzy kolejne liczby ktorych suma jest najwieksza:", max_lst)
    print("Numer ideksu pierwszej z nich:", ind)
else:
    print("Rozmiar tablicy musi byc >= 3!")
