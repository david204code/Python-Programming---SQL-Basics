salary = int(input('Please enter an integer salary '))

#salary = 2500

if salary > 100000:
    print('Band A')
elif salary > 55000:
    print('Band B')
elif salary > 32000:
    print('Band C')
elif salary > 25000:
    print('Band D')
else:
    print('Band E')
