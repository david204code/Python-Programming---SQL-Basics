level = int(input('Please enter level 1 or 2: '))
if level < 1 or level > 2:
     print('Error: leve must be or 1 and 2 inclusive')
else:
    mark = int(input('Please enter a mark in the range 1 to 100: '))
    if mark < 1 or mark > 100:
        print('Error: marks must be between 1 and 100 inclusive')
    else:
        if level == 1:
            if mark > 70:
                print('Distinction')
            elif mark > 60:
                print('Merit')
            elif mark > 49:
                print('Pass')
            else:
                print('Fail')
        else:
            if mark > 65:
                print('Distinction')
            elif mark > 50:
                print('Merit')
            elif mark > 39:
                print('Pass')
            else:
                print('Fail')

