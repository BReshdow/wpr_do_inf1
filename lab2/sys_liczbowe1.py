num = input("Podaj liczbe: ")
basis = int(input("Podaj podstawe systemu liczbowego: "))
sum_ = 0
for i in num:
    sum_ = sum_ * basis + int(i)
print(sum_)

num = int(input("Podaj dziesietna liczbe: "))
basis = int(input("Podaj podstawe systemu liczbowego: "))
res = ""
while num > 0:
    num, w = divmod(num, basis)
    res += str(w)
print(res[::-1])
