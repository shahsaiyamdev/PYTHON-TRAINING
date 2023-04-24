name = input("Enter Your Name : ")
gender = input("Enter Gender : ")
age = int(input("Enter your Age : "))

product = input("Enter Product Name : ")
product_gram = int(input("Enter Product Gram : "))

goldprice = 5752
goldprice1 = goldprice*product_gram
print("Total Gold Rate : ",goldprice1)

making_charges = 845 # 1 gram
total_making_charges = product_gram*making_charges
print("Total Making Charges : ",total_making_charges)

totalamount = goldprice1 + total_making_charges
print("total amount: ",totalamount)

"""discount = (totalamount*25)/100
dis1 = totalamount-discount_amount
print("Total Net Amount",dis1)"""

if gender == "male" and age >65:
    if totalamount > 200000 and totalamount < 300000:
        discount_amount = (totalamount*20)/100
        print("discount_amount 1 ",discount_amount)
    elif totalamount > 300000 and totalamount < 500000:
        discount_amount = (totalamount*30)/100
        print("discount_amount 2 ",discount_amount)
        
    elif totalamount > 500000 :
        discount_amount = (totalamount*35)/100
        print("discount_amount 3 ",discount_amount)
        
    elif  gender == "male" and age <65:
        if totalamount > 200000 and totalamount < 300000:
            discount_amount = (totalamount*10)/100
            print("discount_amount 1 ",discount_amount)
            
    elif totalamount > 300000 and totalamount < 500000:
        discount_amount = (totalamount*20)/100
        print("discount_amount 2 ",discount_amount) 
           
    elif totalamount > 500000 :
        discount_amount = (totalamount*25)/100
        print("discount_amount 3 ",discount_amount)

else:
    if gender == "female" and age >65:
        if totalamount > 200000 and totalamount < 300000:
            discount_amount = (totalamount*25)/100
            print("discount_amount 1 ",discount_amount)
        elif totalamount > 300000 and totalamount < 500000:
            discount_amount = (totalamount*35)/100
            print("discount_amount 2 ",discount_amount)
        
        elif totalamount > 500000 :
            discount_amount = (totalamount*40)/100
            print("discount_amount 3 ",discount_amount)
        
        elif  gender == "female" and age <65:
            if totalamount > 200000 and totalamount < 300000:
                discount_amount = (totalamount*15)/100
                print("discount_amount 1 ",discount_amount)
            
        elif totalamount > 300000 and totalamount < 500000:
            discount_amount = (totalamount*25)/100
            print("discount_amount 2 ",discount_amount) 
           
        elif totalamount > 500000 :
            discount_amount = (totalamount*30)/100
            print("discount_amount 3 ",discount_amount)

    