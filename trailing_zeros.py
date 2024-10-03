i = int(input())

def factorial(num):
    ans = 1
    for x in range(1, num + 1):
        ans *= x
        
    return ans

fact = str(factorial(i))
print(fact)
        