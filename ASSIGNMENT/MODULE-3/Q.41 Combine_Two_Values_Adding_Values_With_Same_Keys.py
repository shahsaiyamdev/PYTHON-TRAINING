"""

Write a Python program to combine two dictionary adding values for common keys.
d1 = {'a': 100, 'b': 200, 'c':300} or d2 = {'a': 300, 'b': 200,’d’:400}
Sample output: Counter ({'a': 400, 'b': 400,’d’: 400, 'c': 300}).

"""

dict1 = {'a': 100, 'b': 200, 'c': 300}
dict2 = {'a': 300, 'b': 200, 'd': 400}
dict3 = {}

dict3.update(dict1)
dict3.update(dict2)
for i,j in dict1.items():
    for x,y in dict2.items():
        if i == x:
            dict3[i] = j+y
            print(dict3)
            