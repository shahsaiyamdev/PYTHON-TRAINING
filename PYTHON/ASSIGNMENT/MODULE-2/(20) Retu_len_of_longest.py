# Write a Python function that takes a list of words and returns the length of the longest one.

str = ["My", "Name", "Is", "Saiyam", "Shah"]
max = len(str)
for i in str:
    if (len(i)>max):
        max = len(i)
        max_word = i
print(max)
