name = input("Enter your full name: ")
print("Your name is",len(name),"characters long.")
print("The last character is:",name[len(name) - 1])
print("The first 'e' is at position",name.find('e')+1)
first_name = name.find(' ')
print("The first name is",name[0:first_name])
vowels = name.count('a')+ name.count('e')+ name.count('i') + name.count('o') + name.count('u')
print("Your name contains", vowels,"vowels.")
name = name.replace('a','A')
name = name.replace('e','E')
name = name.replace('o','O')
name = name.replace('i','I')
name = name.replace('u','U')
print("Your name with uppercase vowels is: ", name )
print("Hi,", name.upper(),",","what a great name!")
