# Write a Python program to generate and print a list of first and last 5 elements 
# where the values are square of numbers between 1 and 30.

list = []

for i in range(1,15):
    list.append(i**2)
    print(list[:5])
    print(list[-5:])
