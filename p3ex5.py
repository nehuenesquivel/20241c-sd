def fibonacci(n):
    if n < 2:
        r = n
    else:
        r = fibonacci(n - 1) + fibonacci(n - 2)
    return r
