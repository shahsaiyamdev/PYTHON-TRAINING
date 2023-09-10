# Write a Python program to get a single string from two given strings, separated by a space and
# swap the first two characters of each string.

a = "abc"
b = "xyz"

a,b = b,a

a1 = a[:2] + b[2:]
a2 = b[:2] + a[2:]
print(a1,a2)
