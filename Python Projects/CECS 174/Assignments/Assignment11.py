def func1(inputString):
    print(inputString)

def func2(value, inputString):
    for val in range(value):
        func1(inputString)

def func3(value, inputString):
    y = 0
    listString = list(inputString)
    for val in range (len(listString)):
        print(listString[y] * value)
        y += 1
        
def func4(inputString):
    listString = list(inputString)
    num = len(inputString)
    for i in range (len(inputString)):
        num -= 1
        print(listString[num], end= '')

    print(" ")   
        
def main():
    check = 0
    check = int(input("Enter a number: "))
    while check <= 4 and check > 0 : 
        x = 0
        y = 0
    
        if check == 1:
            x = input("Enter something: ")
            func1(x)

        if check == 2:
            x = input("Enter something: ")
            y = int(input("How many times repeat?: "))
            func2(y, x)

        if check == 3:
            x = input("Enter something: ")
            y = int(input("How many times repeat?: "))
            func3(y, x)

        if check == 4:
            x = input("Enter something: ")
            func4(x)
            
        check = int(input("Enter a number: "))                            
main()
        

