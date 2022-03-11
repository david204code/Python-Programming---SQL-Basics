min = 1
max = 100

count = 0

while count < 3:
    value = int(input("Please enter your integar guess: "))
    if value >= min and value <= max:
        print("Value is", value)
        break
    count =+ 1

if count == 3:
    print(None)