import math
a = int(input("Please enter the length of Side a: "))
b = int(input("Please enter the length of Side b: "))
c = 0
angA = 0
angB = 0
angC = math.radians(int(input("Please enter the size of Angle C in degrees: ")))
Peimeter = 0
Area = 0
h = 0
c = (a ** 2) + (b ** 2) - 2 * (a * b) * (math.cos(angC))
c = math.sqrt(c)
angA = c/math.sin(angC)
angA = math.degrees(math.asin(a/angA)) 
angB = 180 - angA - math.degrees(angC)
Perimeter = a + b + c
h = 24 * math.sin((math.radians(angB)))
Area = (.5) * h * 47.425
print("         /\          \n"
      "        /  \         \n"
          ,a,"    /    \        \n"
      "      /      \       \n"
      "     /        \      \n"
      "    /__________\     \n")
