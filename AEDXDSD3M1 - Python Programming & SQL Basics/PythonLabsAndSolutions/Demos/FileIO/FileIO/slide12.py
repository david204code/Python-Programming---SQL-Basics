import matplotlib.pyplot as plt

with open("grades.txt") as file:
    for line in file:
        grades = line.replace(' ', '').replace('\n','').split(',')
        grades1 = list((map(float,  grades[2:7])))
        plt.plot([1, 2, 3, 4, 5 ], grades1)

plt.show()

