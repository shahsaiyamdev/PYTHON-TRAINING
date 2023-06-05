# Write a Python function that takes two lists and returns true if they have at least one common member.

a = [1,3,5,9,15]
b = [6,35,50,70,15]

result = False
for i in a:
    for j in b:
        if i==j:
            result = True
print(result)