num = 1

for num in range(1, 101):
    squared = num**2
    if squared > 2000:
        break
    print(num, ' ',squared)
    num += 1