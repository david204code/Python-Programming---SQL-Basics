# years = 0
# invest = 100

# total = invest
# target = 1000
# rate = 10

# while total < 1000:
#     total += (1 + (rate / 100))
#     years += 1

# print("It will take", years, "years to grow", invest, "to", total)

years = 0
invest = float(input("Please enter the amount to invest: "))

total = invest
target = float(input("Enter your investment target: "))
rate = float(input("Enter the interest rate: "))

while total < 1000:
    total += (1 + (rate / 100))
    years += 1

print("It will take", years, "years to grow", invest, "to", total)