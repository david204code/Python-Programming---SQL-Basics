min = 1
max = 20

count = 0

while count < 3:
    value = int(input('Please enter your integer guess: '))
    if value >= min and value <= max:
        print('Value is',value)
        break
    count += 1

if count == 3:
    print(None)

