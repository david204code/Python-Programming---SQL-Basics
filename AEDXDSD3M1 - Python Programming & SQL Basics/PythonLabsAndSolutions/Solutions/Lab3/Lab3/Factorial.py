num = int(input('Please enter your integer: '))

x = 1
total = 1

while x < num + 1:
    total *= x
    x += 1

print('The factorial of',num,'is',total)
