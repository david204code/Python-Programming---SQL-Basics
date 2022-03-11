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
        sales.append(list(map(int, data)))

#print (company)
#print(sales)

monthlySales = [0,0,0,0,0,0,0,0,0,0,0,0]

for i in range(len(sales)):
    for j in range(len(sales[i])):
        monthlySales[j] += sales[i][j]

#print(monthlySales)

companySales = []

for i in range(len(sales)):
    companySales.append(sum(sales[i]))
    
print(len(sales[0]) + 1)

for m in range(1, len(sales[0]) + 1):
    if monthlySales[m - 1] > 0:
        print(calendar.month_name[m],'sales are',monthlySales[m - 1])

print("")

for i in range(len(company)):
    print(company[i], 'sold', companySales[i], 'cars so far this year')

print(sum(companySales),'cars have been sold this year')