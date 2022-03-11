
with open("students.txt") as file:
	lines = file.readlines()

for line in lines:
    print(line.strip())
