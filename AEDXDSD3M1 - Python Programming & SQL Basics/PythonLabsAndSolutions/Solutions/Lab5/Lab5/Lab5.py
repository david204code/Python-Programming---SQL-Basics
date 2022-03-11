import statistics

data="100,30,53,67,85,87,50,45,51,72,64,69,59,17,22,23,44,25,16,67,85,87,50,45,51,72,59,14,50,55,32,23,24,25,37,28,39,30,33,35,40,34,41,43,94,95,59,98,99,44,45,47,48,49,53,61,63,69,75,77,60,83"

grades = data.split(',')

#print(min(grades))
#print(max(grades))

grades = list(map(int,grades))

print('Minimum',min(grades))
print('Maximum',max(grades))
print('Average grade',round(sum(grades)/len(grades),2))

print('Mean grade',round(statistics.mean(grades),2))
print('Median grade',statistics.median(grades))

mini = min(grades)
maxi = max(grades)
aver = round(sum(grades)/len(grades),2)
meani = round(statistics.mean(grades),2)
medi = statistics.median(grades)

str = "Min: {}, Max: {}, Average: {}, Mean: {}, Median: {}".format(mini,maxi,aver,meani,medi)
print(str)

