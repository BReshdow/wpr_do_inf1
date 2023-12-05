def ciag(lst, n):
    if len(lst) == n:
        return lst
    else:
        lst.append((2 * lst[-2]) + lst[-1])
        return ciag(lst, n)


def ciag_iter(lst, n):
    while len(lst) != n:
        lst.append((2 * lst[-2]) + lst[-1])
    return lst


num = int(input("Podaj liczbe: "))
print(ciag([2, 3], num))
print(ciag_iter([2, 3], num))
