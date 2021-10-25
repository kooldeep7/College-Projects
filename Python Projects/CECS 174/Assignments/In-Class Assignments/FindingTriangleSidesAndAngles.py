import math
a = int(input("Enter a: "))
b = int(input("Enter b: "))
h = math.sqrt(math.pow(a,2) + math.pow(b,2))
ang1 = math.degrees(math.asin(a / h))
ang2 = math.degrees(math.acos(a / h))
print("Side a:", a,"Side b:", b, "Hypo:",h)
print("Angle 1:", format(ang1,'.1f'), "Angle 2:",format(ang2,'.1f'))
