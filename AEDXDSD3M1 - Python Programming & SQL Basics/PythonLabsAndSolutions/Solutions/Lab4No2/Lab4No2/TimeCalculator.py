print("Time Calculator")
print('1- Add 2 times')
print('2- Find the difference between 2 time')
print('3- Convert to hours')
print('4- Convert to minutes')
print('5- Convert minutes to time')
print('6- Convert hours to time')
print('7- Convert days to time')
print('8 - Exit')

print("")

opt = int(input("\tEnter an option: "))

if opt < 1 or opt > 8:
    print('Error: Invalid Option entered')
else:
    mins = int(0)
    hours = int(0)
    days = int(0)

    if opt != 8:
        if opt == 1 or opt == 2:
            time1 = input("Enter the time in the Format DD:HH:MM  ")
            parts1 = time1.split(':')
            mins1 = (int(parts1[0]) * 24 * 60) + (int(parts1[1]) * 60) + int(parts1[2])

            time2 = input("Enter the time in the Format DD:HH:MM  ")
            parts2 = time2.split(':')
            mins2 = (int(parts2[0]) * 24 * 60) + (int(parts2[1]) * 60) + int(parts2[2])

            if opt == 1:
                mins = mins1 + mins2
            else:
                mins = mins1 - mins2

            hours = int(mins / 60)
            mins = mins % 60
            days = int(hours /24)
            hours = hours % 24

            theTime = "{:02d}:{:02d}:{:02d}".format(days,hours,mins)

            if opt == 1:
                print(time1,'+',time2,'=',theTime)
            else:
                print(time1,'-',time2,'=',theTime)

        elif opt == 3 or opt == 4:
            time1 = input("Enter the time in the Format DD:HH:MM  ")
            parts1 = time1.split(':')

            if opt == 3:
                hours = int(parts1[0]) * 24 + int(parts1[1])
                print('Time',time1,'converts to',hours,'hours')
            else:
                mins = (int(parts1[0]) * 24 * 60) + (int(parts1[1]) * 60) + int(parts1[2])
                print('Time',time1,'converts to',mins,'mintues')
            
        elif opt == 5:
            mins = int(input('Please enter the mintues to convert: '))
            hours = int(mins / 60)
            mins = mins % 60
            days = int(hours /24)
            hours = hours % 24

            theTime = "{:02d}:{:02d}:{:02d}".format(days,hours,mins)
            print(mins,'mintues converts to',theTime)
        elif opt == 6:
            hours = int(input('Please enter the hours to convert: '))

            days = int(hours /24)
            hours = hours % 24

            theTime = "{:02d}:{:02d}:{:02d}".format(days,hours,mins)
            print(hours,'hours converts to',theTime)

        elif opt == 7:
            days = int(input('Please enter the days to convert: '))
            theTime = "{:02d}:{:02d}:{:02d}".format(days,hours,mins)
            print(days,'days converts to',theTime)
