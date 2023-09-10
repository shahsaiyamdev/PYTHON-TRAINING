# How Do You Check The Presence Of A Key In A Dictionary.

dict = {1:"SAIYAM",2:"SHAH",3:"XYZ",4:"ABC"}
a = int(input("Please Enter Your Number : "))
if a in dict.keys():
    print("True : Key Is Presencing In A Dictionary")
else:
    print("False : Key Is Not Presencing In A Dictionary")
