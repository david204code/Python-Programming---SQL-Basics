print("Time Calculator")
print("1- Add 2 times")
print("2- Find the difference between 2 times")
print("3- Convert to hours")
print("4- Convert to minutes")
print("5- Convert minutes to time")
print("6- Convert hours to time")
print("7- Convert days to time")
print("8- Exit")

opt = int(input("\tEnter an option: "))

if opt < 1 or opt > 8:
    print("Error: Invalid option Entered")
else:
    #print("Option",opt,"selected")
    mins = int(0)
    hours = int(0)
    days = int(0)
    dateEntered = ""

    if opt != 8:

        if opt == 1 or opt == 2:
            time1 = input("Enter the first time in the Format DD:HH:MM")
            parts1 = time1.split(":")
            min1 = (int(parts1[0]) *24 *60) + (int(parts1[1]) * 60) + int(parts1[2])

            time2 = input("Enter the first time in the Format DD:HH:MM")
            parts2 = time2.split(":")

            min2 = (int(parts2[0]) *24 *60) + (int(parts2[1]) * 60) + int(parts2[2])

            if opt == 1:
                mins = min1 + min2
            else:
                mins = min1 - min2

            hours = int(mins/60)
            mins %= 60
            days = int(hours/24)
            hours %= 24

        elif opt > 2 and opt < 5:
            time1 = input("Enter the first time in the Format DD:HH:MM")
            dateEntered = time1
            parts1 = time1.split(":")
            #min1 = (int(parts1[0]) *24 *60) + (int(parts1[1]) * 60) + int(parts1[2])

            if opt == 3: # convert to hours
                hours = (int(parts1[0]) *24) + int(parts1[1])
            else: # convert to mins
                mins = (int(parts1[0]) *24 *60) + (int(parts1[1]) * 60) + int(parts1[2])

        elif opt == 5:
            min5 = int(input("Please enter the number of minutes: "))
            hours = int(min5/60)
            mins = mins5 % 60
            days = int(hours/24)
            hours %= 24
        elif opt == 6:
            hours6 = int(input("Please enter the number of hours: "))
            days = int(hours6/24)
            hours = hours6 % 24
        elif opt == 7:
            days = int(input("Please enter the number of days: "))


    # output stage
    #theTime = "{:02d}:{:02d}:{:02d}".format(days,hours,mins)
    if opt == 3:
        print(dateEntered,"converts to",hours,"hours")
    elif opt == 4:
        print(dateEntered,"converts to",mins,"minutes")
    elif opt!=8:
        theTime = "{:02d}:{:02d}:{:02d}".format(days,hours,mins)
        print(theTime)