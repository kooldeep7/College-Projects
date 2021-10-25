import random
board = []
rCheck = 1
cCheck = 1
check = 0


for i in range(0,7):
    board.append(["0"]*7)

for i in range(5):
    row = random.randint(1,5)
    col = random.randint(1,5)

    while(board[row][col] == "X"):
        row = random.randint(1,5)
        col = random.randint(1,5)

    board[row][col] = "X"
    
    
while rCheck != 6:
    if board[rCheck][cCheck] == "0": 
        if board[rCheck - 1][cCheck] == "X":     #Up
            check += 1
        if board[rCheck + 1][cCheck] == "X":      #Down
            check += 1
        if board[rCheck][cCheck - 1] == "X":      #Left
            check += 1
        if board[rCheck][cCheck + 1] == "X":      #Right
            check += 1
        if board[rCheck - 1][cCheck + 1] == "X":      #TopRightDiag
            check += 1
        if board[rCheck - 1][cCheck - 1] == "X":      #TopLeftDiag
            check += 1
        if board[rCheck + 1][cCheck + 1] == "X":      #BottomRightDiag
            check += 1
        if board[rCheck + 1][cCheck - 1] == "X":      #BottomLeftDiag            
            check += 1
            
        board[rCheck][cCheck] = check
        check = 0
        cCheck += 1

        if cCheck == 6:
            rCheck += 1
            cCheck = 1
                
    while board[rCheck][cCheck] == "X":
        break
    


    

        
for row in range(0,7):
    for col in range(0,7):
        print(board[row][col], end=" ")
    print()
  
