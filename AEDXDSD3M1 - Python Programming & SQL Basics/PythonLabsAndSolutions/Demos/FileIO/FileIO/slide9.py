
with open(r"newstudents.txt", "w") as file:
    file.write("Bob, Smith, 30, 80, 70, 60,73")

with open("newstudents.txt") as file:
    for line in file:
        print(line)
