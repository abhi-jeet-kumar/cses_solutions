# https://cses.fi/problemset/task/1069

dna = input() # ACCGGGTTTT
n = len(dna)
if n <= 1:  # Handle empty or single-character strings
    print(n)
else:
    left, right = 0, 0
    max_length = 1  # Initialize with 1, as a single character is a repetition

    while right < n:
        if dna[right] == dna[left]:  # While characters are the same
            max_length = max(max_length, right - left + 1)  # Update max_length
            right += 1  # Move the right pointer
        else:
            left = right  # Move the left pointer to the right pointer's position
    print(max_length)