# https://cses.fi/problemset/task/1071

i = int(input())
coords = []

for x in range(i):
    coords.append([int(j) for j in input().split()])
    
for coord in coords:
    x = coord[0]
    y = coord[1]
    if x % 2 == 0:
        print(x ** 2 - y)