# Write a Python script to concatenate following dictionaries to create a new one.

d1 = {1:"SAIYAM",2:"SHAH"}
d2 = {3:"ABC",4:"XYZ"}
d3 = {}

for d in (d1,d2) : d3.update(d1)

print(d1)
print(d2)
print(d3)
