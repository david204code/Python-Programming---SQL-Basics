sum = 0
errorFind = False

for x in range(3):
    mark = int(input("Enter a mark in the range 0 to 100: "))
    if mark < 0 or mark > 100:
        errorFind = True
        break
    sum += mark

if errorFind:
    print("Error: Invalid mark entered")
else:
    average = sum / 3
    if average >= 65 :
        result = "Pass"
    else:
        result = "Fail"
    print('Average mark is',average,'result',result)
