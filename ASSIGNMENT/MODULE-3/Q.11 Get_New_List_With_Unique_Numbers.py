# Write a Python function that takes a list and returns a new list with unique elements of the first list.

original_list = [10,20,30,40,20,50,40]
print("Original List : ",original_list)

my_set = set(original_list)
new_list = list(my_set)
print("New List With Unique Numbers : ",new_list)
