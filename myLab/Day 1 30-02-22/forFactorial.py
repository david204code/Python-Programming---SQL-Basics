num = int(input("Please enter an integra: "))

total = 1

for x in range(1, num + 1):
    total *= x

print("The factorial of",num, "is ", total)