i = int(input())

def factorial(num):
    ans = 1
    for x in range(1, num + 1):
        ans *= x
        
    return ans

fact = str(factorial(i))
print(fact)
# 20
# 2432902008176640000

n = len(fact)
left_p, right_p = 0, 0
max_length = 0
while right_p < n:
    if fact[left_p] == 0 and fact[right_p] == 0:
        max_length = max(max_length, right_p - left_p + 1)
        right_p += 1
    else:
        left_p = right_p
print(max_length)
        