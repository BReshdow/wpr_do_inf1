def func(x, n):
    if n == 1:
        return x
    else:
        if not n % 3:
            k = func(x, n // 3)
            return pow(k, 3)
        else:
            return x * func(x, n-1)


print(func(3, 5))
