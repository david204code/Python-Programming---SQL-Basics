with open("students1.txt") as file:
    for line in file:
        print(line)

print()

with open("students1.txt", "a") as file:
    file.write("Bob, Smith, 30, 80, 70, 60, 56\n")
    file.write("Rob, Jones, 20, 60, 80, 90, 73\n")

with open("students1.txt") as file:
    for line in file:
        print(line)

