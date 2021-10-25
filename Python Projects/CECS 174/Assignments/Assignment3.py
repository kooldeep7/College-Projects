# Kuldeep Gohil
# Shannon Foss
# CECS 174
# Assignment 3

date = str(input("Please enter a date (MM/DD/YYYY): "))
printM = 0
weekDay = 0
m = int(date[0:2])
d = int(date[3:5])
C = int(date[6:8])
D = int(date[8:10])
printYear = int(date[6:10])
if (m == 1):
    m = 13
    if (D == 0):
        D = 99
        C = 19
    else:
        D = D - 1
    printM = 'January'
elif (m == 2):
    m = 14
    if (D == 0):
        D = 99
        C = 19
    else:
        D = D - 1
    printM = 'February'
elif (m == 3):
    m = 3
    printM = 'March'
elif (m == 4):
    m = 4
    printM = 'April'
elif (m == 5):
    m = 5
    printM = 'May'
elif (m == 6):
    m = 6
    printM = 'June'
elif (m == 7):
    m = 7
    printM = 'July'
elif (m == 8):
    m = 8
    printM = 'August'
elif (m == 9):
    m = 9
    printM = 'September'
elif (m == 10):
    m = 10
    printM = 'October'
elif (m == 11):
    m = 11
    printM = 'November'
elif (m == 12):
    m = 12
    printM = 'Decemeber'
weekDay = d + int(((m+1)*26)/10) + D + int(D/4) + int(C/4) - 2*C
weekDay %= 7

if (weekDay == 0):
    weekDay = 'Saturday'
elif (weekDay == 1):
    weekDay = 'Sunday'
elif (weekDay == 2):
    weekDay = 'Monday'
elif (weekDay == 3):
    weekDay = 'Tuesday'
elif (weekDay == 4):
    weekDay = 'Wednesday'
elif (weekDay == 5):
    weekDay = 'Thursday'
elif (weekDay == 6):
    weekDay = 'Friday'

print("Your date was",weekDay + ", " + printM,str(d) + ", " + str(printYear))
