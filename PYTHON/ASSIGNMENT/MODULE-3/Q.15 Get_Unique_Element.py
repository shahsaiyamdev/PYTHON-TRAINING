# Write a Python program to get unique values from a list.

original_list = [10,20,30,40,20,50,40]
print("Original List : ",original_list)

my_set = set(original_list)
new_list = list(my_set)
print("New List With Unique Numbers : ",new_list)
