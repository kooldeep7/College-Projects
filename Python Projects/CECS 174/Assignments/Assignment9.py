numbers = []
check = 0
calc = 0
replace = 0
replaceLoc = 0 
while len(numbers) < 10:
    values = int(input("Enter number to the list: "))
    numbers.append(values)
    print("total numbers so far: ", len(numbers))


print(numbers, " \n"
      "1. Compute Sum \n"
      "2. Compute Average \n"
      "3. Compute Median \n"
      "4. Maximum Value \n"
      "5. Replace Value \n"
      "6. Quit")

check = int(input("Enter number between 1-6: "))
while check > 6 or check < 0:
    check = int(input("Enter number between 1-6: "))
        
while check != 6:
    numbers.sort()
    if check == 1:
        calc = sum(numbers)
        print("Your Sum is: ",calc, " \n")
        calc = 0
    if check == 2:
        calc = (sum(numbers))/ len(numbers)
        print("Your Average is:", format(calc,'.2f'), " \n")
        calc = 0
    if check == 3:
        calc = (numbers[4] + numbers[5]) / 2
        print("Your Median is:", calc)
        calc = 0
    if check == 4:
        print("Your Maximum Number is: ",max(numbers), " \n")
    if check == 5:
        replace = int(input("Enter a number to find: "))
        replaceLoc = numbers.index(replace)
        replaceNum = int(input("Enter a number to replace with: "))
        numbers.pop(replaceLoc)
        numbers.insert(replaceLoc, replaceNum)
        
    print(numbers, " \n"
      "1. Compute Sum \n"
      "2. Compute Average \n"
      "3. Compute Median \n"
      "4. Maximum Value \n"
      "5. Replace Value \n"
      "6. Quit")
    
    check = int(input("Enter number between 1-6: "))
    while check > 6 or check < 0:
        check = int(input("Enter number between 1-6: "))

if check == 6:
    print('THANK YOU FOR USING THE PROGRAM')
        

