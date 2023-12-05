def to_ten(n: str, base: int) -> int:
    sum_ = 0
    for i in n:
        sum_ = sum_ * base + int(i)
    return sum_


def to_smth(n: int, base: int) -> str:
    res = ""
    while n > 0:
        n, w = divmod(n, base)
        res += str(w)
    return res[::-1]


num = input("Podaj liczbe: ")
basis = int(input("Podaj podstawe systemu liczbowego: "))
print(to_ten(num, basis))

num = int(input("Podaj dziesietna liczbe: "))
basis = int(input("Podaj podstawe systemu liczbowego: "))
print(to_smth(num, basis))
