input = int(input("Please enter an integra: "))

x = 1
total = 1

while x <= input:
    total *= x
    x += 1

print("The factorial of",input, "is ", total)