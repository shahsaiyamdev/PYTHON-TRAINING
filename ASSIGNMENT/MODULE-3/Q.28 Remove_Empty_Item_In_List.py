# Write a Python program to remove an empty tuple(s) from a list of tuples.

list = [(),('abc'),('xyz')]
list1 = []

for i in range(0,len(list)):
    if len(list[i])==0:
        continue
    else:
        list1.append(list[i])

print(list1)

