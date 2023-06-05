# Write a Python program to print all unique values in a dictionary.

d = {"1":"SAIYAM"}, {"2": "XYZ"}, {"3": "SAIYAM"}, {"4":"ASD"}, {"5":"AZX"}, {"6":"AWE"}
a = []
for i in d:
    for j in i.values():
        a.append(j)
print(set(a))
