total = 0
answer = 'y'

while answer == 'y':
    total += int(input('Enter a number (1-10)'))

    if total >= 21:
        break

    answer = input('Get another number?')

print('Total is ',total)

