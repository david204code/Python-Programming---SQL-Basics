def getIncomeTax(salary):
	tempSalary = salary
	taxable20 = 0
	taxable40 = 0
	taxable45 = 0

	if tempSalary > 150000:
		taxable45 = tempSalary - 150000
		tempSalary = 150000

	if tempSalary > 34500:
		taxable40 = tempSalary - 34500
		tempSalary = 34500

	if tempSalary > 11850:
		taxable20 = tempSalary - 11850

	return (taxable20 * 0.2) + (taxable40 * 0.4) + (taxable45 * 0.45)

# --------------------Main program-------------------------

print('salary £15000 tax due', getIncomeTax(15000))
print("salary £34500 tax due", getIncomeTax(34500))
print("salary £36000 tax due", getIncomeTax(36000))
print("salary £150000 tax due", getIncomeTax(150000))
print("salary £200000 tax due", getIncomeTax(200000))
