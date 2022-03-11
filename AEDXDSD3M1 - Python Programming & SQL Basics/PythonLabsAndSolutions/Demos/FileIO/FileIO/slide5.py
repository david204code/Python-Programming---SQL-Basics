file = open("students1.txt", "r") 

for line in file:
    print(line.strip())

file.close()

