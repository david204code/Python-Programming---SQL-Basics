str = "Bob"

print(str.lower())
print(str.upper())

name = input("Please enter a  name: ")

if name == 'bob':
    print('Hello bob')
else:
    print("You're not bob!")


print("Now using lower")

if name.lower() == 'bob':
    print('Hello bob')
else:
    print("You're not bob!")


