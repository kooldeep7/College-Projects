import random
board = []

for i in range(0, 3):
    board.append(["_"]*3)

placement = 2    

for i in range(9):
    row = random.randint(0,2)
    col = random.randint(0,2)

    while(board[row][col] == "X" or board[row][col] == "O"):
        row = random.randint(0,2)
        col = random.randint(0,2)
        
    if placement%2 == 0:
        board[row][col] = "X"
        placement = 1
            
    elif placement%2 == 1:
        board[row][col] = "O"
        placement = 2

for row in range(0,3):
    for col in range(0,3):
        print(board[row][col], end=" ")
    print()
