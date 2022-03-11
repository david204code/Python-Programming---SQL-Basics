ages = [12,18,33,84,45,67,12,82,95,16,10,23,43,29,40,34,30,16,44,69,70,74,38,65,36,83,50,11,79,64,78,37,3,8,68,22,4,60,33,82,45,23,5,18,28,99,17,81,14,88,50,19,59,7,44,93,35,72,25,63,11,69,11,76,10,60,30,14,21,82,47,6,21,88,46,78,92,48,36,28,51]

# print(ages)

# length of the list
listLength = len(ages)
print("The length of ages list is", listLength)

# display the ages list in each line
for x in ages:
    print(x)

# Add year to each ages
for x in range(len(ages)):
    # print(age)
    ages[x] += 1
for x in ages:
    print(x)

print()
complete = False

while not complete:
    for i in range(len(ages)):
        complete = True
        if ages[i] < 16 or ages[i] > 65:
            del(ages[i])
            complete = False
            break

for x in ages:
    print(x)

print()


ages.sort()
count = 0

for x in ages:
    if x < 26:
        count += 1
    else:
        break

print("The number of ages between 16 and 25 inclusive is", count)
print()

print("The porportion of ages between 16 and 25 is ", count, ":", len(ages))
print("The porportion of ages between 16 and 25 is", count, ":", listLength)
