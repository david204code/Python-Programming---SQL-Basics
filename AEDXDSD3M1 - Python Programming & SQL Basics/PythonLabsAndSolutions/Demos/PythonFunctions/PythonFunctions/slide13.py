
cities = "london,birmingham,leeds,manchester,bristol"
print(cities)
print()

cityList = cities.split(',')

print(cityList)
print()

city = input('Please enter a city name: ')

if city.lower() in cityList:
    print('Your city is in the list!')
else:
    print(city,"is not in the list")