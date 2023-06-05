# Write a Python function to check whether a number is perfect or not.

def PerNot():
    n = int(input("Enter Any Number: "))
    sum = 0
    for i in range(1,n):
        if(n % i == 0):
            sum = sum + i
    if (sum == n):
        print("The Number Is Perfect Number!")
    else:
        print("The Number Is Not A Perfect Number!")

PerNot()
