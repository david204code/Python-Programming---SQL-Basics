
numbers = [2,3,4,5,6,7,8]

for x in numbers:
    print(x,end=',')
print('\n')
print("remove 5")
# remove the first 5 only
numbers.remove(5)
#remove/delete the subscript
# del(numbers[5])

for x in numbers:
    print(x,end=',')
print('\n')

numbers = [1,3,5,7,5,9,5]

for x in numbers:
    print(x,end=',')
print('\n')
print("remove 5")
numbers.remove(5)

for x in numbers:
    print(x,end=',')
print('\n')

print("Delete the 1st element")
del(numbers[0])

for x in numbers:
    print(x,end=',')
print('\n')