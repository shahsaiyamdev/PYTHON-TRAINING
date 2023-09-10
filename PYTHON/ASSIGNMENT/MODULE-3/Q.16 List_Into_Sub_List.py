# Write a Python program to check whether a list contains a sub list.

list1 = [1,3,6,9,10,15]
list2 = [10,3,12]

l = len(list1)
i = 0
for i in list1:
    for j in list2:
        if i == j:
            print(i)
