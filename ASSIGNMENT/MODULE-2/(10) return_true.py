# Write a Python program that will return true if the two given integer values are equal or their sum or difference is 5.

num1 = int(input("Enter First Number : "))
num2 = int(input("Enter Second Number : "))

if num1 == num2 or abs(num1-num2) == 5 or (num1+num2) == 5:
    print("TRUE")
else:
    print("FALSE")

