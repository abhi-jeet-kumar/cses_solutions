# https://cses.fi/problemset/task/1071

i = int(input())
coords = []

for x in range(i):
    coords.append([int(j) for j in input().split()])
    
for coord in coords:
    y = coord[0]
    x = coord[1]
    if y > x:
        ar = (y - 1) ** 2
        if y % 2 != 0:
            add = x
        else:
            add = y * 2 - x
        print(ar + add)
    else:
        ar = (x - 1) ** 2
        if x % 2 == 0:
            add = y
        else:
            add = x * 2 - y
        print(ar + add)