
strAge = input('Please enter your age: ')
if strAge.isdigit():
    age = int(strAge)
    print(age + 1)
else:
    print(strAge,'is not a valid age!')

print("Testing for floats")
num = input("Enter a decimal number: ")

if num.replace(".", "", 1).isdigit():
    print('OK')
else:
    print("No")
