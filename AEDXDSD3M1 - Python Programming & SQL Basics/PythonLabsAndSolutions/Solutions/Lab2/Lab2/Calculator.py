print("Operator Menu")
print("1. Add      +")
print("2. Subtract -")
print("3. Multiply *")
print("4. Divide   /")
print("5. Square   s")
print("")

first = float(input("Enter the first number: "))
operator = input("Enter the operator: ")

if operator != "s":
    second = float(input("Enter the second number: "))

if operator == "+":
    print(first,'+',second,'=',first + second)
elif operator == "-":
    print(first,'-',second,'=',first - second)
elif operator == "*":
    print(first,'*',second,'=',first * second)
elif operator == "/":
    if second == 0:
        print(second, 'Can not divide by zero')
    else:
        print(first,'/',second,'=',first / second)
elif operator == "s":
    print(first,'squared','=',first * first)



