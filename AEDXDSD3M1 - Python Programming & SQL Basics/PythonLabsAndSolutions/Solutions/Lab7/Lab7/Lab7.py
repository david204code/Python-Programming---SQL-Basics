import calendar

company = []
sales = []

with open("carSale.csv") as file:
    while True:
        line = file.readline().strip()
        if line == '':
            break
        company.append(line)
        data = file.readline().strip().split(',')
        sales.append(list(map(int,data)))

# Cars sold each month

monthlySales = [0,0,0,0,0,0,0,0,0,0,0,0,0]

# monthly sales
for i in range(len(sales)):
    for j in range(len(sales[i])):
        monthlySales[j] += sales[i][j]

print(monthlySales)

CompanySales =[]

for i in range(len(sales)):
    CompanySales.append(sum(sales[i]))



#print(len(sales[0]))

for m in range(1,len(sales[0]) + 1):
    if monthlySales[m - 1] > 0:
        print(calendar.month_name[m],'sales are',monthlySales[m - 1])

print("")

for i in range(len(company)):
    print(company[i],'sold',CompanySales[i],'cars so far this year')
