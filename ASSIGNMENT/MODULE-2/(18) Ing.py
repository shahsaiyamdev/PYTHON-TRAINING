# Write a Python program to add 'ing' at the end of a given string (length should be at least 3). 
# If the given string already ends with 'ing' then add 'ly' instead 
# if the string length of the given string is less than 3, leave it unchanged.

str = "string"
if len(str) < 3:
    print(str)
elif str[-3:] == 'ing':
    print(str + 'ly')
else:
    print(str + 'ing')

