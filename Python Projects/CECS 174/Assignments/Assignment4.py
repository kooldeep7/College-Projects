#Kuldeep Gohil
#Professor Foss
#CECS 174
#Assignment 4

print("Menu: \n"
      "1. TL Triangle \n"
      "2. TR Triangle \n"
      "3. BL Triangle \n"
      "4. BR Triangle \n"
      "5. Quit")

opt_Num = int(input("Enter an option between 1 and 5: "))
while opt_Num > 5 or opt_Num < 1:
    opt_Num = int(input("Invalid input. Please enter an option between 1 and 5: "))
    
while opt_Num != 5:
    num = 0
    space = " "
    size = int(input("Enter size of triangle between 1 and 25: "))
    while size > 25 or size < 1:
        size = int(input("Invalid input. Please enter size of triangle between 1 and 25: "))
    
    symbol = input("Enter a symbol: ")
    while len(symbol) < 1 or len(symbol) > 1:
        symbol = input("Invalid input. Enter a symbol: ")
    
    if opt_Num == 1:
        while size > 0:
            print(size * symbol)
            size -= 1

    if opt_Num == 2:
        while size > 0:
            space = space * num
            print(space + (size * symbol))      
            num += 1
            size -= 1
            space = " "

    if opt_Num == 3:
        while size > 0:
            num += 1
            print(num * symbol)
            size -= 1

    if opt_Num == 4:
        while size > 0:
            num += 1
            space = space * (size - 1)
            print(space + (num * symbol))
            size -= 1
            space = " " 
    opt_Num = int(input("Enter an option between 1 and 5: "))
    while opt_Num > 5 or opt_Num < 1:
        opt_Num = int(input("Invalid input. Please enter an option between 1 and 5: "))
        
if opt_Num == 5:
        print("Thank you for using the program!")

    
                  
    

        
                

        
        
    
    
