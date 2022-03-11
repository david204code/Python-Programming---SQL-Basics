import matplotlib.pyplot as plt

file = open("students.txt", "r") 
header = file.readline() 
lines = file.readlines()

file.close()

for line in lines:
    grades = line.replace(' ', '').replace('\n','').split(',')
    grades1 =[]
    for x in range(2,7):
        grades1.append(float(grades[x]))
    plt.plot([1, 2, 3, 4, 5, ], grades1)


plt.show()

