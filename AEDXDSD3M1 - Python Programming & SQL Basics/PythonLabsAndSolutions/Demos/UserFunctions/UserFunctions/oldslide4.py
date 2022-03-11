def makeFullName(firstName, lastName):
    fullName = firstName + ' ' + lastName
    return fullName

print(makeFullName('Bob', 'Smith'))
# or use a variable
fn = makeFullName('Bob', 'Smith')
print('Hello', fn)

