# https://cses.fi/problemset/task/1068

i = int(input())


def is_even(num):
    if num % 2 == 0:
        return True
    return False
    
while i != 1:
    print(i, end= " ")
    if is_even(i):
        i //= 2
    else:
        i = (i * 3) + 1
print(i)