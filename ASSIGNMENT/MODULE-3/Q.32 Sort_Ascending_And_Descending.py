# Write a Python script to sort (ascending and descending) a dictionary by value.

d = {1: 2, 3: 4, 4: 3, 2: 1, 0: 0}
print("Original List Is : ",d)

l = list(d.items())
l.sort()
print("Ascending Order Is : ",l)

l.reverse()
print("Descending Order Is : ",l)