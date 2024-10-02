# https://cses.fi/problemset/task/1069

dna = input() # ACCGGGTTTT
n = len(dna)
if n <= 1:  # Handle empty or single-character strings
    print(n)
else:
    left_pointer, right_pointer = 0, 0
    max_length = 1
    while right_pointer < n:
        if dna[left_pointer] == dna[right_pointer]:
            max_length = max(max_length, right_pointer - left_pointer + 1)
            right_pointer += 1
        else:
            left_pointer = right_pointer
    print(max_length)