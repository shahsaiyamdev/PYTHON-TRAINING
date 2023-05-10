#declare blank dictionary
stock = {}

menu ="""
            WELCOME TO FRUIT MARKET 
        
            1) Manager
            2) Customer
    
        """
print(menu)
choice = int(input("Select Your Role : "))

status = True
while status:
    menu1 = """
    
                Fruit Market Manager 

                1) Add Fruit Stock
                2) View Fruit Stock
                3) Update Fruit Stock

    """
    print(menu1)

    choice1 = int(input("Enter Your Choice  : "))
    
    if choice == 1 or choice1 == 1:
        fruit_market_manager_status = True
        while fruit_market_manager_status :
            spec = {} #dictionary for specification  or inner dictionary
            print("ADD FRUIT STOCK")
            print("---------------------------")

            #accpet fruit details from fruit market manager
            fruit_name = input("ENTER FRUIT NAME : ")
            fruit_qty = int(input("ENTER QTY (IN KG) : "))
            fruit_price = int(input("ENTER FRUIT PRICE : "))
            
            #creating nested dictionary first
            spec['qty'] = fruit_qty         #"qty" : 5
            spec['price'] = fruit_price     # "price" : 100

            #creating outer dictionary
            stock[fruit_name]  = spec      #{Apples : {"qty" : 5,"price" : 100}}
            
            print(stock)
            
            manager_choice = input("Do You Want To Perform More Operations : Press y For yes And n For No : ")
            if manager_choice == "y" or manager_choice == "Y":
                fruit_market_manager_status = True
            else:
                fruit_market_manager_status = False
            
            
    elif choice == 2 :
        print(stock)
    else:    
        print("Customer")

