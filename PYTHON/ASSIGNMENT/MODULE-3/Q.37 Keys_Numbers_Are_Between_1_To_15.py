# Write a Python script to print a dictionary where the keys are numbers between 1 and 15.

d = dict()
for x in range (1,16):
    d[x] = x**1
    print(d)

d = {}
for x in range (1,15+1):
    keys = x
    val = keys * x

z = {keys:val}
d.update(z)
print(d)
