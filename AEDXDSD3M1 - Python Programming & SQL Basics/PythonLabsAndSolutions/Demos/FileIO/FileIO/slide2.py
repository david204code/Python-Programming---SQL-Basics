file = open("students.txt", "r") 
line = file.readline()

file.close()

print(line)
print()

file = open("students.txt", "r") 
line = file.readline()
while line:
    #line = line.replace("\n","")
    #line = line.strip()
    print(line)
    line = file.readline()

file.close()



