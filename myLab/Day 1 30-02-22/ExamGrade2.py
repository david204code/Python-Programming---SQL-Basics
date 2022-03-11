# Calculate exam grades with levels
level = int(input("Please enter 1 or 2 "))

if level < 1 or level > 2:
    print("Error: Level " + str(level) + ", it must be 1 or 2") 
    exit()

grade = int(input("Please enter the mark in range 1 to 100: "))
if grade < 1 or grade > 100:

    print("Error: Invalid grace", grade, "must be in the range between 1 to 100")
if level == 1:
    if grade > 70:
        print("Distinction")
    # elif