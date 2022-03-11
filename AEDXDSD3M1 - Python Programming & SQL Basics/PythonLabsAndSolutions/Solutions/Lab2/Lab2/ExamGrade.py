mark = int(input('Please enter a mark in the range 1 to 100: '))
if mark < 1 or mark > 100:
    print('Error: marks must be between 1 and 100 inclusive')
else:
    if mark > 70:
        print('Distinction')
    elif mark > 60:
        print('Merit')
    elif mark > 49:
        print('Pass')
    else:
        print('Fail')
