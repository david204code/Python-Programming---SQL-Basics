
#years = 0
#invest = 100

#while invest < 1000:
#    invest *= 1.1
#    years += 1

#print("It took",years,'years to grow 100 to',invest

invest = float(input('Enter your initial investment: '))
target = float(input("Enter your target value: "))
rate = float(input('Enter your interest rate: '))
total = invest;
years = 0

while total < target:
    total *= (1 + rate/100)
    years += 1

print('It will take',years,'years to grow',invest,'to',total)


