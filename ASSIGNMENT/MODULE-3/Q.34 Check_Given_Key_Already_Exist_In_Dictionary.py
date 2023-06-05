# Write a Python script to check if a given key already exists in a dictionary.

dict = {1:10, 2:40, 3:60, 4:100}
def key_present(i):
    if i in dict:
        print("Key Is Already Exist In Dictionary")
    else:
        print("Key Is Not Present In Dictionary")
    
key_present(5)
key_present(2)
