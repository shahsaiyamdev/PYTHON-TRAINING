# Write a Python function to calculate the factorial of a number (a nonnegative integer).

#Function
def findfactorial(num):        # 5*4*3*21
    f = 1                      # Factorial Initial Value Start From 1
    for i in range(1,num+1):
        f*=i
    print("Factoral Number : ",f)

#Accept Number From User.
number = int(input("Enter Number : "))
findfactorial(number)
