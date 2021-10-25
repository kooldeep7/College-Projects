import random

def getState(dictionary):
    randomState = 0
    randomState = random.sample(dictionary.keys(), 1)
    return randomState

def getIncorrectChoices(dictionary):
    incState1 = 0
    incState2 = 0
    incState3 = 0
    incStateList = []
    incState1 = random.choice(list(dictionary.keys()))
    incState2 = random.choice(list(dictionary.keys()))
    incState3 = random.choice(list(dictionary.keys()))
    incStateList.append(incState1)
    incStateList.append(incState2)
    incStateList.append(incState3)
    return incStateList

def randomizeChoices(dictionary, randomState, incStateList):
    while dictionary[randomState] == incStateList[0] or dictionary[randomState] == incStateList[1] or dictionary[randomState] == incStateList[2]:
        getIncorrectChoices(dictionary)

def checkInput(userInput):
    val = 0
    userInput = 0
    userInput = str(input("Enter an answer between a-d or A-D: "))
    invalid = True
    while invalid:
        try:
            if userInput == 'a' or userInput == 'b' or userInput == 'c' or userInput == 'd' or userInput == 'A' or userInput == 'B' or userInput == 'C' or userInput == 'D':
                invalid = False
                

            else:
                print("Invalid Range")
                userInput = str(input("Enter an answer between a-d or A-D: "))
        except ValueError:
            print("Invalid Range")
    return userInput

def askQuestion(dictionary, randomState, incStateList):
    
    print("The capital of", randomState, "is:  \n"
          "   a.", dictionary[randomState], " b.",incStateList[1], " c.",incStateList[2], " d.", incStateList[0])

def checkCorrect(userInput, dictionary, randomState):
    print("userInput: ",userInput) 
    if userInput == 'a' or userInput == 'A':
        print("Correct!")
    else:
        print("Incorrect, the correct answer is: ", dictionary[randomState])

def main():
    randomState = 0
    userInput = 0
    incChoiceList = []
    capitals = { "Alabama":"Montgomery", "Alaska":"Juneau", "Arizona":"Phoenix", "Arkansas":"Little Rock", "California":"Sacramento", "Colorado":"Denver", "Connecticut":"Hartford", "Delaware":"Dover", "Florida":"Tallahassee", "Georgia":"Atlanta", "Hawaii":"Honolulu", "Idaho":"Boise", "Illinois":"Springfield", "Indiana":"Indianapolis", "Iowa":"Des Moines", "Kansas":"Topeka", "Kentucky":"Frankfort", "Louisiana":"Baton Rouge", "Maine":"Augusta", "Maryland":"Annapolis", "Massachusetts":"Boston", "Michigan":"Lansing", "Minnesota":"St. Paul", "Mississippi":"Jackson", "Missouri":"Jefferson City", "Montana":"Helena", "Nebraska":"Lincoln", "Nevada":"Carson City", "New Hampshire":"Concord", "New Jersey":"Trenton", "New Mexico":"Santa Fe", "New York":"Albany", "North Carolina":"Raleigh", "North Dakota":"Bismarck", "Ohio":"Columbus", "Oklahoma":"Oklahoma City", "Oregon":"Salem", "Pennsylvania":"Harrisburg", "Rhode Island":"Providence", "South Carolina":"Columbia", "South Dakota":"Pierre", "Tennessee":"Nashville", "Texas":"Austin", "Utah":"Salt Lake City", "Vermont":"Montpelier", "Virginia":"Richmond", "Washington":"Olympia", "West Virginia":"Charleston", "Wisconsin":"Madison", "Wyoming":"Cheyenne" }
    check = True
    while check:
        randomState = getState(capitals)
        randomState = (randomState)
        randomState = randomState[0]
        incChoiceList = getIncorrectChoices(capitals)
        randomizeChoices(capitals, randomState, incChoiceList)
        askQuestion(capitals, randomState, incChoiceList)
        userInput = checkInput(userInput)
        checkCorrect(userInput, capitals, randomState)
        check = input("Type 'stop' to end the program or enter to continue: ")
        if check == 'stop':
            print("Thank you for using the program!") 
            check = False
        else:
            check = True
            continue
        
main()       
        
        
        
        
        
        
        
        
        
        
    
    
            
                
                
            
    
    
    
