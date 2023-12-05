def factor_iter(n):
    res = 1
    for i in range(1, n + 1):
        res *= i
    return res


def factor_recur(n):
    if n == 0:
        return 1
    if n == 1:
        return 1
    return n * factor_recur((n-1))


def symbol_newtona(n, k):
    return factor_recur(n) / (factor_recur(k) * (factor_recur(n - k)))


def sn_recur(n, k):
    if not k or k == n:
        return 1
    else:
        return sn_recur(n - 1, k - 1) + sn_recur(n - 1, k)


# print(factor_iter(5))
# print(factor_recur(7))
print(symbol_newtona(19, 3))
print(sn_recur(19, 3))
