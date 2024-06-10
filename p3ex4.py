def binary_search(n, l):
    ls = 0
    rs = len(l)
    while True:
        i = (rs + ls) // 2  # ls + (rs - ls) // 2
        e = l[i]
        if n < e:
            rs = i
        elif n > e:
            ls = i
        else:
            return i
