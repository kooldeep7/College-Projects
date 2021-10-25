#Kuldeep Gohil
#CECS 174
#Professor: Shannon Foss

galleonSale = 0
sicklesSale = 0
knutsSale = 0
galleonReceived = 0
sicklesReceived = 0
knutsReceived = 0
galleon = 0
sickles = 0
knuts = 0
knutsTest1 = 0
knutsTest2 = 0
print("Welcome to Flourish and Blotts! \n"
      "Please enter amount of sale:")
galleonSale = int(input("Galleons: "))
sicklesSale = int(input("Sickles: "))
knutsSale = int(input("Knuts: "))
print("Please enter amount tendered:")
galleonReceived = int(input("Galleons: "))
sicklesReceived = int(input("Sickles: "))
knutsReceived = int(input("Knuts: "))
sickles = galleonSale * 17
sickles = sickles + sicklesSale
knutsTest1 = sickles * 29
knutsTest1 += knutsSale
sickles = galleonReceived * 17
sickles += sicklesReceived
knutsTest2 = sickles * 29
knutsTest2 += knutsReceived
knuts = abs(knutsTest2 - knutsTest1)
sickles = int(knuts / 29)
galleon = int(sickles / 17)
knuts = knuts % 29

print("*************************************************** \n"
      "*                Flourish & Blotts                * \n"
      "*    Amt of Sale ........",'%3s' % galleonSale,"G"," ",'%3s' % sicklesSale,"S"," ",'%3s' % knutsSale,'%3s' % "K   *\n"
      "*    Amt Received .......",'%3s' % galleonReceived,"G"," ",'%3s' % sicklesReceived,"S"," ",'%3s' % knutsReceived,'%3s' % "K   *\n"
      "*    Change Due  ........",'%3s' % galleon,"G"," ",'%3s' % sickles,"S"," ",'%3s' % knuts,'%3s' % "K   *\n"
      "*                                                 *\n"
      "*  Thank You for Shopping at Flourish and Blotts  *\n"
      "*                                                 *\n"
      "*Program by: Kuldeep Gohil(⌐■_■)                  *\n"
      "***************************************************\n")
      
