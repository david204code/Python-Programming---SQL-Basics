grade = int(input("Please enter the mark in range 1 to 100: "))

if grade < 1 or grade > 100:
    print("Error: Invalid grace", grade, "must be in the range between 1 to 100")
else:
    if grade > 70:
        print("Distinction")
    elif grade > 60:
        print("Merit")
    elif grade > 49:
        print("Pass")
    else:
        print("Failed, try again.")
