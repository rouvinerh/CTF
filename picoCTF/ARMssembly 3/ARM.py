input = 469937816
def func1 (x):
    count = 0
    while x != 0:
        if x & 1 != 0:
            count +=3
        x = x >> 1

    return count

ans = func1 (input)
print (ans)
