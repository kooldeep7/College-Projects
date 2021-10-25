#Kuldeep Gohil
#CECS 174
#ASSIGNMENT 6
items = {'cheetos': 0, 'doritos': 0, 'pretzel': 0}
def menuInput():
    print("Kuldeep's snacks: \n "
          "1. Cheetos = $1.05 \n "
          "2. Doritos = $1.15 \n "
          "3. Pretzel = $1.25 \n "
          "4. Complete Order")
    check = int(input("Enter an item number: "))
    while check <= 0 or check > 4:
        check = int(input("Enter an item number: "))
    return check
               
def quantityInput(check):
    quantity1 = 0
    quantity2 = 0
    quantity3 = 0
    if check == 1:
        quantity1 = int(input("Enter how many bags of cheetos: "))
        while check < 0:
            quantity1 = int(input("Enter how many bags of cheetos: "))
        return quantity1
    if check == 2:
        quantity2 = int(input("Enter how many bags of doritos "))
        while check < 0:
            quantity2 = int(input("Enter how many bags of doritos: "))
        return quantity2
    if check == 3:
        quantity3 = int(input("Enter how many bags of pretzel: "))
        while check < 0:
            quantity3 = int(input("Enter how many bags of pretzel: "))
        return quantity3

def subTotal(price1, price2, price3, quantity1, quantity2, quantity3):
    return ((quantity1 * price1) + (quantity1 * price2) + (quantity1 * price3))
    
    
    
def calcTax(subTotal):
    return subTotal * .09 


def displayReceipt(sTotal,tax,numItems):
    totalCost = sTotal + tax
    print("Subtotal:   ", "$" + str(format(sTotal,'.2f')), " \n "
          "Tax:        ", "$" + str(format(tax,'.2f')), " \n "
          "Total Cost: ", "$" + str(format(totalCost,'.2f')), " \n "
          "Number of items:", numItems, " \n "
          "Thank you, Enjoy!")      
    
    
def main():
    cheetos = 0
    doritos = 0
    pretzel = 0
    subTotal = 0
    tax = 0
    finalCost = 0
    numItems = 0
    check = 1
    price1 = 1.05
    price2 = 1.15
    price3 = 1.25
    while check <= 4 and check > 0: 
        check = menuInput()
        if check == 1:
            quantityInput(check)
            cheetos += quantityInput(check)
        if check == 2:
            quantityInput(check)
            doritos += quantityInput(check)
        if check == 3:
            quantityInput(check)
            pretzel += quantityInput(check)
        if check == 4:
            subTotal = subTotal(price1, price2, price3, cheetos, doritos, pretzel)
            tax = calcTax(subTotal)
            numItems = cheetos + doritos + pretzel
            displayReceipt(subTotal, tax, numItems)
            
            
        
    
    
    
    

main()
    
    
    
    
    
    
