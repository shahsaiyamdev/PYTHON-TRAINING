#declare blank dictionary
stock = {}
status = True
while status:
    menu ="""
                WELCOME TO FRUIT MARKET 
            
                1) Manager
                2) Customer
        
            """
    print(menu)
    choice = int(input("Select Your Role : "))

    if choice == 1:
        add_fruit = True
        while add_fruit:
            menu1 = """
        
                    Fruit Market Manager 

                    3) Add Fruit Stock
                    4) Update Fruit Stock
                    5) View Fruit Stock

            """
            print(menu1)
            choice1 = int(input("Enter Your Choice  : "))
    
            if  choice1 == 3:
    
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
            
        
            
                    manager_choice = input("Do You Want To Perform More Operations : Press y For yes And n For No : ")
                    if manager_choice == "y" or manager_choice == "Y":
                        fruit_market_manager_status = True
                    else:
                        fruit_market_manager_status = False  
            

            elif choice1  == 4:
                    spec1 = {} #dictionary for specification  or inner dictionary
                    print("UPDATE FRUIT STOCK")
                    print("---------------------------")

                    #accpet fruit details from fruit market manager
                    fruit_name = input("ENTER FRUIT NAME : ")
                    fruit_qty = int(input("ENTER QTY (IN KG) : "))
                    fruit_price = int(input("ENTER FRUIT PRICE : "))
            
                    old_qty = stock[fruit_name]['qty']

                    #creating nested dictionary first
                    spec1['qty'] = old_qty+ fruit_qty         #"qty" : 5
                    spec1['price'] = fruit_price     # "price" : 100

                    #creating outer dictionary
                    stock[fruit_name]  = spec1     #{Apples : {"qty" : 5,"price" : 100}}

                    

            elif choice1 == 5 :  
                for k, v in stock.items():
                    print(k , " : ", v) 
                

    else:    
        print("Customer")                

