file = open("students.txt", "r") 
header = file.readline() 
lines = file.readlines()

file.close()

#print(header)

for line in lines:
    #print(line)
    print(line.strip())

