import random

def displayMenu():
    print("Dice Rolls Histogram \n"
          "1. Roll Dice \n"
          "2. Quit")

def checkMenuInput():
    val = 0
    invalid = True
    while invalid:
        try:
            val = int(input("Enter Menu Option: "))
            if val == 1 or val == 2:              
                invalid = False
                return val
            else:
                print("Invalid Range")

        except ValueError:
            print("Invalid Range")
def checkRollsInput():
    val = 0
    invalid = True
    while invalid:
        try:
            val = int(input("Enter # of Rolls: "))
            if val > 0:
                return val
                invalid = False
            else:
                print("Invalid Range")
        except ValueError:
            print("Invalid Range")

def rollDice(rolls):
    a = 0
    random1 = 0
    random2 = 0
    diceTot = {2:0,3:0,4:0, 5:0, 6:0, 7:0 , 8:0, 9:0 ,10:0 ,11:0 ,12:0}
    while rolls > 0:
        random1 = 0
        random1 = random.randint(1,6)
        random2 = random.randint(1,6)
        diceTot[random1 + random2] += 1 
        rolls -= 1
    return diceTot

def displayHistogram1(rolls, diceTot):
    x = 1
    
    for values in diceTot:
        x += 1
        print((str(x) + ":", diceTot.get(x)))
    
def displayHistogram(rolls, diceList):
    dice2 = int((diceList[2] / rolls) * 100) * '*'
    dice3 = int((diceList[3] / rolls) * 100) * '*'
    dice4 = int((diceList[4] / rolls) * 100) * '*'
    dice5 = int((diceList[5] / rolls) * 100) * '*'
    dice6 = int((diceList[6] / rolls) * 100) * '*'
    dice7 = int((diceList[7] / rolls) * 100) * '*'
    dice8 = int((diceList[8] / rolls) * 100) * '*'
    dice9 = int((diceList[9] / rolls) * 100) * '*'
    dice10 = int((diceList[10] / rolls) * 100) * '*'
    dice11 = int((diceList[11] / rolls) * 100) * '*'
    dice12 = int((diceList[12] / rolls)  * 100) * '*'
    print("  2: ", dice2, " \n "
          " 3: ", dice3, " \n "
          " 4: ", dice4, " \n "
          " 5: ", dice5, " \n "
          " 6: ", dice6, " \n "
          " 7: ", dice7, " \n "
          " 8: ", dice8, " \n "
          " 9: ", dice9, " \n "
          "10: ", dice10, " \n "
          "11: ", dice11, " \n "
          "12: ", dice12)

def main():
    check = 1
    while check != 2: 
            displayMenu()
            check = checkMenuInput()
            if check == 2:
                check = 2
                break
            else:
                rolls = checkRollsInput()
                display = rollDice(rolls)
                displayHistogram(rolls, display)
            
    

main()
    
    
        

        
        
        
        
            
    
    
