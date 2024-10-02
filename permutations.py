# https://cses.fi/problemset/task/1070

# the key to construct a beautiful construction is to first print out the even digits and then the odd digits.
# for 1,2,3 no solution exists. 

n = int(input())

if n == 2 or n == 3:
    print("NO SOLUTION")
else:
    for i in range(2, n+1, 2):
        print(i, end=" ")
    for j in range(1, n+1, 2):
        print(j, end=" ")