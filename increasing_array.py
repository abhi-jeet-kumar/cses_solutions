# https://cses.fi/problemset/task/1094

i = int(input())
nums = [int(i) for i in input().split()]

moves = 0
for x in range(1, i):
    if nums[x] < nums[x-1]:
        diff = nums[x-1] - nums[x]
        nums[x] += diff
        moves += diff
print(moves)