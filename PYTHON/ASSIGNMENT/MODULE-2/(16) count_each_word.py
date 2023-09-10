# Write a Python program to count the occurrences of each word in a given sentence.

str = input("Enter String : ")
str1 = str.split(' ')

for i in str1:
    print(i,str1.count(i))
