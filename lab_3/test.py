from functools import lru_cache


@lru_cache(maxsize=None)
def fib(n):
    if not n or n == 1:
        return 1
    return fib(n-1) + fib(n-2)


for i in range(50):
    print(i, fib(i))
