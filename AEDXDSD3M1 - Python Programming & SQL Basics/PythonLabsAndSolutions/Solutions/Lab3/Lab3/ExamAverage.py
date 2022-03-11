valid = False
while not valid:
    maths = int(input("Please enter your maths exam mark: "))
    if maths >= 0 and maths <= 100:
        valid = True

valid = False
while not valid:
    english = int(input("Please enter your english exam mark: "))
    if english >= 0 and english <= 100:
        valid = True

valid = False
while not valid:
    ict = int(input("Please enter your ICT exam mark: "))
    if ict >= 0 and ict <= 100:
        valid = True

averageMark = (maths + english + ict) / 3
if averageMark > 64:
    print("Pass, Average mark is ", averageMark)
else:
    print("Fail, Average mark is ", averageMark)