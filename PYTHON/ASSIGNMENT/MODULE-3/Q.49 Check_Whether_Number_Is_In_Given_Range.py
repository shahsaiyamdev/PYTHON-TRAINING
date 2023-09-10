# Write a Python function to check whether a number is in a given range.

def givenrange(n):
    if n in range(1,6):
        print(" %s Is In The Range"%str(n))
    else:
        print("The Number Is Outside The Given Range.")
givenrange(5)
