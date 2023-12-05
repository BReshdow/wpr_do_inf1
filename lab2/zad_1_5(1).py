zero = False
lst = []
print("Zadanie1.\nPodaj liczby: ")
while True:
    num = int(input())
    if not num:  # num == 0
        zero = not zero
        continue
    if zero:
        lst.append(num)
    else:
        if num < 0:
            break
print(lst)
print(sum(lst) / len(lst))

n = int(input("Zadanie 2.\nPodaj rozmiar tablicy: "))
lst = [int(input("Podaj liczbe: ")) for _ in range(n)]
lst2 = []
for i in lst[:-1]:
    if i > lst[-1]:
        lst2.append(i)
print(sum(lst2))
print(sum(lst2) / len(lst2))

n = int(input("Zadanie 3.\nPodaj rozmiar tablicy: "))
lst = [input("Podaj liczbe: ") for _ in range(n)]
lst2 = []
for i in lst:
    sum_ = 0
    for j in i:
        sum_ += int(j)
    if sum_ > int(lst[-1]):
        lst2.append(i)
print("Ilosc liczb: ", len(lst2))

print("Zadanie 4.")
lst = []
for i in range(10):
    num = int(input("Podaj liczbe: "))
    if not num:
        break
    lst.append(num)
left, right = 0, len(lst) - 1
while left < right:
    if lst[left] % 2:
        lst[left], lst[right] = lst[right], lst[left]
        right -= 1
    else:
        left += 1
print(lst)

n = int(input("Zadanie 5.\nPodaj rozmiar tablicy: "))
lst = [int(input("Podaj liczbe: ")) for _ in range(n)]
move = 0
for num, elem in enumerate(lst):
    if elem and (not elem % 5):
        move += 1
    else:
        lst[num - move] = lst[num]
print(lst[:-move])
