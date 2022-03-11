print("Time Calculator")
# Input two time strings
print("1- Add 2 times")
print("2- Find the difference between 2 times")
# Input only one time string
print("3- Convert to Hours")
print("4- Convert to Minutes")
print("5- Convert Minutes to Time")
print("6- Convert Hours to Time")
print("7- Convert Days to Time")
print('8 - Exit')
print()

# \t is a tab character, special character
option = int(input("\tEnter an option: "))

# if in range
if option < 1 or option > 8:
    print("Error: Invalid input", option)
    # exit()
else:
    # initiate the data and time information
    mins = int(0)
    hours = int(0)
    days = int(0)

    if option != 8 :
        if option == 1 or option == 2:
            time1 = input("Enter the time in Format DD:HH:MM ")
            parts1 = time1.split(':')
            #turn it into minutes
            mins1 = (int(parts1[0]) * 24 * 60) + (int(parts1[1]) * 60) + int(parts1[2])
            
            time2 = input("Enter the time in Format DD:HH:MM ")
            parts2 = time2.split(':')
            mins2 = (int(parts1[0]) * 24 * 60) + (int(parts1[1]) * 60) + int(parts1[2])

            if option == 1:
                mins = mins1 + mins2
            else:
                mins = mins1 - mins2

            hours = int(mins / 60)
            mins = mins % 60
            days = int(hours / 24)
            hours = hours % 24

            theTime = "{:02d}:{:02d}:{:02d}".format(days,hours,mins)

            if option == 1:
                print(time1, "+", time2, "=", theTime)
            else:
                print(time1, "-", time2, "=", theTime)

        elif option == 3 or option == 4:
            time1 = input("Enter the time in Format DD:HH:MM")
            parts1 = time1.split(':')

            if option == 3:
                hours = (int(parts1[0]) * 24) + (int(parts1[1]))
                print("Time", time1, "converts to", hours, "Hours")
            else:
                mins == (int(parts1[0]) * 24 * 60) + (int(parts1[1]) * 60) + int(parts1[2])
                print("Time", time1, "converts to",mins,"Minutes")

        if option == 5:
            mins1 = int(input("Please enter the minutes to convert"))

            mins = mins1
            hours = int(mins / 60)
            mins = mins % 60
            days = int(hours / 24)
            hours = hours % 24

            theTime = "{:02d}:{:02d}:{:02d}".format(days,hours,mins)
            print(mins1, "Minutes converts to", theTime)
        elif option == 6:
            hours1 = int(input("Please enter the hours to convert: "))

            hours = hours1
            days = int(hours / 24)
            hours = hours % 24
            theTime = "{:02d}:{:02d}:{:02d}".format(days,hours,mins)
            print(hours1, "Hours converts to", theTime)

        elif option == 7:
            days = int(input("Please enter the days to convert: "))
            theTime = "{:02d}:{:02d}:{:02d}".format(days,hours,mins)
            print(days,'days converts to',theTime)