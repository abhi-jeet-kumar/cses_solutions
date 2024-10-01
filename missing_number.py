# https://cses.fi/problemset/task/1083

i = int(input())
j = input().split()
 
sum_till_i = (i * (i + 1)) // 2
x = 0
for n in j:
    x += int(n)
    
print(sum_till_i - x)
