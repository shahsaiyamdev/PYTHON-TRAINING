# Write a Python program to find the highest 3 values in a dictionary.

dict = {"a":10,"b":100,"c":50,"d":150,"e":60,"f":200}

dict1 = sorted(dict.values())

print(dict1)

print(sorted(dict1[-3:],reverse=True))

