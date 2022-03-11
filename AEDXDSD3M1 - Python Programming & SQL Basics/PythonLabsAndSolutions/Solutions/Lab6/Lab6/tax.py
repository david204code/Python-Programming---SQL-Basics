def getIncomeTax(salary):
    tempssalary = salary
    taxable20 = 0
    taxable40 = 0
    taxable45 = 0

    if tempssalary > 150000:
        taxable45 = tempssalary - 150000
        tempssalary = 150000

    if tempssalary > 34500:
        taxable40 = tempssalary - 34500
        tempssalary = 34500

    if tempssalary > 11850:
        taxable20 = tempssalary - 11850

    return (taxable20 * 0.2) + (taxable40 * 0.4) + (taxable45 * 0.45)

#----------------------- Main Program ------------------------------------

print('salary £10000 tax due',getIncomeTax(10000))
print('salary £34500 tax due',getIncomeTax(34500))
print('salary £36000 tax due',getIncomeTax(36000))
print('salary £150000 tax due',getIncomeTax(150000))
print('salary £200000 tax due',getIncomeTax(200000))
