print("Pythagoras' Menu")
print('1. Find the length of A given B and C')
print('2. Find the length of B given A and C')
print('3. Find the length of C given A and B')
print('')

choice = int(input('Please enter your choice: '))
if choice < 1 or choice > 3:
    print('Error: Invalid choice: ')
else:
    if choice == 1:
        B = float(input('Enter side B: '))
        C = float(input('Enter side C: '))
        print('A is',(C**2 - B**2)**0.5)
    elif choice == 2:
        A = float(input('Enter side A: '))
        C = float(input('Enter side C: '))
        print('B is',(C**2 - A**2)**0.5)
    else:
        A = float(input('Enter side A: '))
        B = float(input('Enter side B: '))
        print('C is',(A**2 + B**2)**0.5)
