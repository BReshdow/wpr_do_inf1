def fib(n):
    fib_lst = [1, 1]
    while len(fib_lst) < n:
        next_elem = fib_lst[-1] + fib_lst[-2]
        fib_lst.append(next_elem)
    return fib_lst


print(fib(50)[-1])
